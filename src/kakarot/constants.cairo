// SPDX-License-Identifier: MIT

// @title Constants file.
// @notice This file contains global constants.
namespace Constants {
    // Define constants

    // ADDRESSES
    const ADDRESS_BYTES_LEN = 20;

    // BLOCK
    // CHAIN_ID = KKRT (0x4b4b5254) in ASCII
    const CHAIN_ID = 1263227476;
    // Hardcode block gas limit to 20M
    const BLOCK_GAS_LIMIT = 20000000;

    // STACK
    const STACK_MAX_DEPTH = 1024;

    // TRANSACTION
    // TODO: handle tx gas limit properly and remove this constant
    // Temporarily set tx gas limit to 1M gas
    const TRANSACTION_GAS_LIMIT = 1000000;

    // PRECOMPILES
    // There is no gap between precompiles addresses so we can use the last address as a reference point to determine whether an address is a precompile or not
    const LAST_PRECOMPILE_ADDRESS = 0x09;

    // PROXY
    const INITIALIZE_SELECTOR = 0x79dc0da7c54b95f10aa182ad0a46400db63156920adb65eca2654c0945a463;
    const CONTRACT_ADDRESS_PREFIX = 'STARKNET_CONTRACT_ADDRESS';
    // EOA_V0.0.1 => [69, 79, 65, 95, 86, 48, 46, 48, 46, 49] => 0x454f415f56302e302e31 => pedersen hashed
    const EOA_VERSION = 0x6f5f51231e876bd085664a890c148a20ea806c5211a8ffd1a61747cf71c71d9;
    // CA_V0.0.1 => [67, 65, 95, 86, 48, 46, 48, 46, 49] => 0x43415f56302e302e31 => pedersen hashed
    const CA_VERSION = 0x7be1c12f918a11456a63db29ebfd5e477c967ae994e1bf751a7d04fa8429095;
    // ACCOUNTS
    const BYTES_PER_FELT = 16;
    const MAX_NONCE = 2 ** 64 - 1;
    const MAX_CODE_SIZE = 0x6000;
}

// See model.Opcode:
// number
// gas
// stack_input
// stack_size_min
// stack_size_diff
opcodes_label:
// STOP
dw 0x00;
dw 0;
dw 0;
dw 0;
dw 0;
// ADD
dw 0x01;
dw 3;
dw 2;
dw 2;
dw -1;
// MUL
dw 0x02;
dw 5;
dw 2;
dw 2;
dw -1;
// SUB
dw 0x03;
dw 3;
dw 2;
dw 2;
dw -1;
// DIV
dw 0x04;
dw 5;
dw 2;
dw 2;
dw -1;
// SDIV
dw 0x05;
dw 5;
dw 2;
dw 2;
dw -1;
// MOD
dw 0x06;
dw 5;
dw 2;
dw 2;
dw -1;
// SMOD
dw 0x07;
dw 5;
dw 2;
dw 2;
dw -1;
// ADDMOD
dw 0x08;
dw 8;
dw 3;
dw 3;
dw -1;
// MULMOD
dw 0x09;
dw 8;
dw 3;
dw 3;
dw -1;
// EXP
dw 0x0a;
dw 10;
dw 2;
dw 2;
dw -1;
// SIGNEXTEND
dw 0x0b;
dw 5;
dw 2;
dw 2;
dw -1;
// INVALID
dw 0x0c;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x0d;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x0e;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x0f;
dw 0;
dw 0;
dw 0;
dw 0;
// LT
dw 0x10;
dw 3;
dw 2;
dw 2;
dw -1;
// GT
dw 0x11;
dw 3;
dw 2;
dw 2;
dw -1;
// SLT
dw 0x12;
dw 3;
dw 2;
dw 2;
dw -1;
// SGT
dw 0x13;
dw 3;
dw 2;
dw 2;
dw -1;
// EQ
dw 0x14;
dw 3;
dw 2;
dw 2;
dw -1;
// ISZERO
dw 0x15;
dw 3;
dw 1;
dw 1;
dw 0;
// AND
dw 0x16;
dw 3;
dw 2;
dw 2;
dw -1;
// OR
dw 0x17;
dw 3;
dw 2;
dw 2;
dw -1;
// XOR
dw 0x18;
dw 3;
dw 2;
dw 2;
dw -1;
// NOT
dw 0x19;
dw 3;
dw 1;
dw 1;
dw -1;
// BYTE
dw 0x1a;
dw 3;
dw 2;
dw 2;
dw -1;
// SHL
dw 0x1b;
dw 3;
dw 2;
dw 2;
dw -1;
// SHR
dw 0x1c;
dw 3;
dw 2;
dw 2;
dw -1;
// SAR
dw 0x1d;
dw 3;
dw 2;
dw 2;
dw -1;
// INVALID
dw 0x1e;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x1f;
dw 0;
dw 0;
dw 0;
dw 0;
// SHA3
dw 0x20;
dw 30;
dw 2;
dw 2;
dw -1;
// INVALID
dw 0x21;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x22;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x23;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x24;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x25;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x26;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x27;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x28;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x29;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2a;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2b;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2c;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2d;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2e;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x2f;
dw 0;
dw 0;
dw 0;
dw 0;
// ADDRESS
dw 0x30;
dw 2;
dw 0;
dw 0;
dw 1;
// BALANCE
dw 0x31;
dw 100;
dw 1;
dw 1;
dw 0;
// ORIGIN
dw 0x32;
dw 2;
dw 0;
dw 0;
dw 1;
// CALLER
dw 0x33;
dw 2;
dw 0;
dw 0;
dw 1;
// CALLVALUE
dw 0x34;
dw 2;
dw 0;
dw 0;
dw 1;
// CALLDATALOAD
dw 0x35;
dw 3;
dw 1;
dw 1;
dw 0;
// CALLDATASIZE
dw 0x36;
dw 2;
dw 0;
dw 0;
dw 1;
// CALLDATACOPY
dw 0x37;
dw 3;
dw 3;
dw 3;
dw 0;
// CODESIZE
dw 0x38;
dw 2;
dw 0;
dw 0;
dw 1;
// CODECOPY
dw 0x39;
dw 3;
dw 3;
dw 3;
dw 0;
// GASPRICE
dw 0x3a;
dw 2;
dw 0;
dw 0;
dw 1;
// EXTCODESIZE
dw 0x3b;
dw 100;
dw 1;
dw 1;
dw 0;
// EXTCODECOPY
dw 0x3c;
dw 100;
dw 4;
dw 4;
dw 0;
// RETURNDATASIZE
dw 0x3d;
dw 2;
dw 0;
dw 0;
dw 1;
// RETURNDATACOPY
dw 0x3e;
dw 3;
dw 3;
dw 3;
dw 0;
// EXTCODEHASH
dw 0x3f;
dw 100;
dw 1;
dw 1;
dw 0;
// BLOCKHASH
dw 0x40;
dw 20;
dw 1;
dw 1;
dw 0;
// COINBASE
dw 0x41;
dw 2;
dw 0;
dw 0;
dw 1;
// TIMESTAMP
dw 0x42;
dw 2;
dw 0;
dw 0;
dw 1;
// NUMBER
dw 0x43;
dw 2;
dw 0;
dw 0;
dw 1;
// PREVRANDAO
dw 0x44;
dw 2;
dw 0;
dw 0;
dw 1;
// GASLIMIT
dw 0x45;
dw 2;
dw 0;
dw 0;
dw 1;
// CHAINID
dw 0x46;
dw 2;
dw 0;
dw 0;
dw 1;
// SELFBALANCE
dw 0x47;
dw 5;
dw 0;
dw 0;
dw 1;
// BASEFEE
dw 0x48;
dw 2;
dw 0;
dw 0;
dw 1;
// INVALID
dw 0x49;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4a;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4b;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4c;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4d;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4e;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x4f;
dw 0;
dw 0;
dw 0;
dw 0;
// POP
dw 0x50;
dw 2;
dw 1;
dw 1;
dw -1;
// MLOAD
dw 0x51;
dw 3;
dw 1;
dw 1;
dw 0;
// MSTORE
dw 0x52;
dw 3;
dw 2;
dw 2;
dw -2;
// MSTORE8
dw 0x53;
dw 3;
dw 2;
dw 2;
dw -2;
// SLOAD
dw 0x54;
dw 100;
dw 1;
dw 1;
dw 0;
// SSTORE
dw 0x55;
dw 100;
dw 2;
dw 2;
dw -2;
// JUMP
dw 0x56;
dw 8;
dw 1;
dw 1;
dw -1;
// JUMPI
dw 0x57;
dw 10;
dw 2;
dw 2;
dw -2;
// PC
dw 0x58;
dw 2;
dw 0;
dw 0;
dw 1;
// MSIZE
dw 0x59;
dw 2;
dw 0;
dw 0;
dw 1;
// GAS
dw 0x5a;
dw 2;
dw 0;
dw 0;
dw 1;
// JUMPDEST
dw 0x5b;
dw 1;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x5c;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x5d;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0x5e;
dw 0;
dw 0;
dw 0;
dw 0;
// PUSH0
dw 0x5f;
dw 2;
dw 0;
dw 0;
dw 1;
// PUSH1
dw 0x60;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH2
dw 0x61;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH3
dw 0x62;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH4
dw 0x63;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH5
dw 0x64;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH6
dw 0x65;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH7
dw 0x66;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH8
dw 0x67;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH9
dw 0x68;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH10
dw 0x69;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH11
dw 0x6a;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH12
dw 0x6b;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH13
dw 0x6c;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH14
dw 0x6d;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH15
dw 0x6e;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH16
dw 0x6f;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH17
dw 0x70;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH18
dw 0x71;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH19
dw 0x72;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH20
dw 0x73;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH21
dw 0x74;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH22
dw 0x75;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH23
dw 0x76;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH24
dw 0x77;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH25
dw 0x78;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH26
dw 0x79;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH27
dw 0x7a;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH28
dw 0x7b;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH29
dw 0x7c;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH30
dw 0x7d;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH31
dw 0x7e;
dw 3;
dw 0;
dw 0;
dw 1;
// PUSH32
dw 0x7f;
dw 3;
dw 0;
dw 0;
dw 1;
// DUP1
dw 0x80;
dw 3;
dw 0;
dw 1;
dw 1;
// DUP2
dw 0x81;
dw 3;
dw 0;
dw 2;
dw 1;
// DUP3
dw 0x82;
dw 3;
dw 0;
dw 3;
dw 1;
// DUP4
dw 0x83;
dw 3;
dw 0;
dw 4;
dw 1;
// DUP5
dw 0x84;
dw 3;
dw 0;
dw 5;
dw 1;
// DUP6
dw 0x85;
dw 3;
dw 0;
dw 6;
dw 1;
// DUP7
dw 0x86;
dw 3;
dw 0;
dw 7;
dw 1;
// DUP8
dw 0x87;
dw 3;
dw 0;
dw 8;
dw 1;
// DUP9
dw 0x88;
dw 3;
dw 0;
dw 9;
dw 1;
// DUP10
dw 0x89;
dw 3;
dw 0;
dw 10;
dw 1;
// DUP11
dw 0x8a;
dw 3;
dw 0;
dw 11;
dw 1;
// DUP12
dw 0x8b;
dw 3;
dw 0;
dw 12;
dw 1;
// DUP13
dw 0x8c;
dw 3;
dw 0;
dw 13;
dw 1;
// DUP14
dw 0x8d;
dw 3;
dw 0;
dw 14;
dw 1;
// DUP15
dw 0x8e;
dw 3;
dw 0;
dw 15;
dw 1;
// DUP16
dw 0x8f;
dw 3;
dw 0;
dw 16;
dw 1;
// SWAP1
dw 0x90;
dw 3;
dw 0;
dw 2;
dw 0;
// SWAP2
dw 0x91;
dw 3;
dw 0;
dw 3;
dw 0;
// SWAP3
dw 0x92;
dw 3;
dw 0;
dw 4;
dw 0;
// SWAP4
dw 0x93;
dw 3;
dw 0;
dw 5;
dw 0;
// SWAP5
dw 0x94;
dw 3;
dw 0;
dw 6;
dw 0;
// SWAP6
dw 0x95;
dw 3;
dw 0;
dw 7;
dw 0;
// SWAP7
dw 0x96;
dw 3;
dw 0;
dw 8;
dw 0;
// SWAP8
dw 0x97;
dw 3;
dw 0;
dw 9;
dw 0;
// SWAP9
dw 0x98;
dw 3;
dw 0;
dw 10;
dw 0;
// SWAP10
dw 0x99;
dw 3;
dw 0;
dw 11;
dw 0;
// SWAP11
dw 0x9a;
dw 3;
dw 0;
dw 12;
dw 0;
// SWAP12
dw 0x9b;
dw 3;
dw 0;
dw 13;
dw 0;
// SWAP13
dw 0x9c;
dw 3;
dw 0;
dw 14;
dw 0;
// SWAP14
dw 0x9d;
dw 3;
dw 0;
dw 15;
dw 0;
// SWAP15
dw 0x9e;
dw 3;
dw 0;
dw 16;
dw 0;
// SWAP16
dw 0x9f;
dw 3;
dw 0;
dw 17;
dw 0;
// LOG0
dw 0xa0;
dw 375;
dw 2;
dw 2;
dw -2;
// LOG1
dw 0xa1;
dw 375;
dw 3;
dw 3;
dw -3;
// LOG2
dw 0xa2;
dw 375;
dw 4;
dw 4;
dw -4;
// LOG3
dw 0xa3;
dw 375;
dw 5;
dw 5;
dw -5;
// LOG4
dw 0xa4;
dw 375;
dw 6;
dw 6;
dw -6;
// INVALID
dw 0xa5;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xa6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xa7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xa8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xa9;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xaa;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xab;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xac;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xad;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xae;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xaf;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb0;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb1;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb2;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb3;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb4;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb5;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xb9;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xba;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xbb;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xbc;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xbd;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xbe;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xbf;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc0;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc1;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc2;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc3;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc4;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc5;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xc9;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xca;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xcb;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xcc;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xcd;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xce;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xcf;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd0;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd1;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd2;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd3;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd4;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd5;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xd9;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xda;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xdb;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xdc;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xdd;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xde;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xdf;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe0;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe1;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe2;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe3;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe4;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe5;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xe9;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xea;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xeb;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xec;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xed;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xee;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xef;
dw 0;
dw 0;
dw 0;
dw 0;
// CREATE
dw 0xf0;
dw 32000;
dw 3;
dw 3;
dw -2;
// CALL
dw 0xf1;
dw 100;
dw 7;
dw 7;
dw -6;
// CALLCODE
dw 0xf2;
dw 100;
dw 7;
dw 7;
dw -6;
// RETURN
dw 0xf3;
dw 0;
dw 2;
dw 2;
dw -2;
// DELEGATECALL
dw 0xf4;
dw 100;
dw 6;
dw 6;
dw -5;
// CREATE2
dw 0xf5;
dw 32000;
dw 4;
dw 4;
dw -3;
// INVALID
dw 0xf6;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xf7;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xf8;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xf9;
dw 0;
dw 0;
dw 0;
dw 0;
// STATICCALL
dw 0xfa;
dw 100;
dw 6;
dw 6;
dw -5;
// INVALID
dw 0xfb;
dw 0;
dw 0;
dw 0;
dw 0;
// INVALID
dw 0xfc;
dw 0;
dw 0;
dw 0;
dw 0;
// REVERT
dw 0xfd;
dw 0;
dw 2;
dw 2;
dw -2;
// INVALID
dw 0xfe;
dw 0;
dw 0;
dw 0;
dw 0;
// SELFDESTRUCT
dw 0xff;
dw 5000;
dw 1;
dw 1;
dw -1;
