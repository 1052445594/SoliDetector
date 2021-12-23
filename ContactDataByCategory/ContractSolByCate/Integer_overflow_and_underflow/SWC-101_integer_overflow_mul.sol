//Single transaction overflow
//Post-transaction effect: overflow escapes to publicly-readable storage

pragma solidity ^0.4.19;

contract IntegerOverflowMul {
    uint public count = 2;

    function run(uint256 input) public {
        count *= input;
    }
}

/*
description: Single transaction overflow using mul
issues:
- id: SWC-101
  count: 1
  locations:
  - bytecode_offsets: 
      '0x6447009c99f794580933d06bda6405b9d6c4e95c4b51a37bf3c8b36c9199b0cf': [174]
    line_numbers:
      integer_overflow_mul.sol: [10]
*/
*/