//Single transaction overflow
//Post-transaction effect: overflow escapes to publicly-readable storage

pragma solidity ^0.4.19;

contract IntegerOverflowMinimal {
    uint public count = 1;

    function run(uint256 input) public {
        count -= input;
    }
}

/*
*description: Single transaction overflow
issues:
- id: SWC-101
  count: 1
  locations:
  - bytecode_offsets:
      '0x80074413148835f7b77d5bf3607abd9e7cdd53db154097aa0e82b9a7bdfbbfe3': [174]
    line_numbers:
      integer_overflow_minimal.sol: [10]
*/