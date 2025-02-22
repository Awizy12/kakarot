import random

import pytest
import pytest_asyncio
from starknet_py.contract import Contract
from starknet_py.net.account.account import Account
from starknet_py.net.client_models import TransactionStatus
from starknet_py.net.full_node_client import FullNodeClient

from tests.end_to_end.bytecodes import test_cases
from tests.utils.constants import PRE_FUND_AMOUNT
from tests.utils.helpers import (
    extract_memory_from_execute,
    generate_random_evm_address,
    hex_string_to_bytes_array,
)
from tests.utils.reporting import traceit

params_execute = [pytest.param(case.pop("params"), **case) for case in test_cases]


@pytest_asyncio.fixture(scope="session")
async def evm():
    """
    Return a cached EVM contract.
    """
    from scripts.utils.starknet import get_contract

    return await get_contract("EVM")


@pytest_asyncio.fixture(scope="session")
async def origin(evm: Contract, addresses):
    """
    Deploys the origin's Starknet contract to the correct address and funds it.
    """
    from scripts.utils.starknet import fund_address

    evm_address = int(addresses[0].address, 16)
    sn_address = (
        await evm.functions["compute_starknet_address"].call(evm_address)
    ).contract_address
    await fund_address(sn_address, 10)
    return evm_address


@pytest.mark.asyncio
class TestKakarot:
    class TestEVM:
        @pytest.mark.parametrize(
            "params",
            params_execute,
        )
        async def test_execute(
            self,
            starknet: FullNodeClient,
            eth: Contract,
            wait_for_transaction,
            params: dict,
            request,
            evm: Contract,
            addresses,
            max_fee,
            origin,
        ):
            with traceit.context(request.node.callspec.id):
                result = await evm.functions["evm_call"].call(
                    origin=origin,
                    value=int(params["value"]),
                    bytecode=hex_string_to_bytes_array(params["code"]),
                    calldata=hex_string_to_bytes_array(params["calldata"]),
                )

            assert result.success == params["success"]
            assert result.stack_values[: result.stack_size] == (
                [
                    int(x)
                    for x in params["stack"]
                    .format(
                        account_address=int(addresses[0].address, 16),
                        timestamp=result.block_timestamp,
                        block_number=result.block_number,
                    )
                    .split(",")
                ]
                if params["stack"]
                else []
            )
            assert bytes(extract_memory_from_execute(result)).hex() == params["memory"]
            assert bytes(result.return_data).hex() == params["return_data"]

            events = params.get("events")
            if events:
                # Events only show up in a transaction, thus we run the same call, but in a tx
                tx = await evm.functions["evm_execute"].invoke(
                    origin=origin,
                    value=int(params["value"]),
                    bytecode=hex_string_to_bytes_array(params["code"]),
                    calldata=hex_string_to_bytes_array(params["calldata"]),
                    max_fee=max_fee,
                )
                status = await wait_for_transaction(tx.hash)
                assert status == TransactionStatus.ACCEPTED_ON_L2
                receipt = await starknet.get_transaction_receipt(tx.hash)
                assert [
                    [
                        # we remove the key that is used to convey the emitting kakarot evm contract
                        event.keys[1:],
                        event.data,
                    ]
                    for event in receipt.events
                    if event.from_address != eth.address
                ] == events

    class TestComputeStarknetAddress:
        async def test_should_return_same_as_deployed_address(
            self, compute_starknet_address, addresses
        ):
            eoa = addresses[0]
            starknet_address = await compute_starknet_address(eoa.address)
            assert eoa.starknet_contract.address == starknet_address

    class TestDeployExternallyOwnedAccount:
        async def test_should_deploy_starknet_contract_at_corresponding_address(
            self,
            fund_starknet_address,
            deploy_externally_owned_account,
            compute_starknet_address,
            get_contract,
        ):
            evm_address = generate_random_evm_address()
            starknet_address = await compute_starknet_address(evm_address)
            await fund_starknet_address(starknet_address, PRE_FUND_AMOUNT / 1e18)

            await deploy_externally_owned_account(evm_address)
            eoa = await get_contract(
                "externally_owned_account", address=starknet_address
            )
            actual_evm_address = (
                await eoa.functions["get_evm_address"].call()
            ).evm_address
            assert actual_evm_address == int(evm_address, 16)

        async def test_should_send_fees_to_caller(
            self,
            starknet: FullNodeClient,
            fund_starknet_address,
            deploy_externally_owned_account,
            is_account_deployed,
            compute_starknet_address,
            deployer: Account,
            eth_balance_of,
            deploy_fee: int,
        ):
            seed = random.randint(0, 0x5EED)
            evm_address = generate_random_evm_address(seed=seed)
            while await is_account_deployed(evm_address):
                seed += 1
                evm_address = generate_random_evm_address(seed=seed)

            starknet_address = await compute_starknet_address(evm_address)
            await fund_starknet_address(starknet_address, PRE_FUND_AMOUNT / 1e18)

            eoa_balance_prev = await eth_balance_of(starknet_address)
            deployer_balance_prev = await eth_balance_of(deployer.address)

            tx = await deploy_externally_owned_account(evm_address)
            receipt = await starknet.get_transaction_receipt(tx.hash)

            deployer_balance_after = await eth_balance_of(deployer.address)
            eoa_balance_after = await eth_balance_of(starknet_address)

            assert (
                deployer_balance_after - deployer_balance_prev
                == deploy_fee - receipt.actual_fee
            )
            assert eoa_balance_prev - eoa_balance_after == deploy_fee
