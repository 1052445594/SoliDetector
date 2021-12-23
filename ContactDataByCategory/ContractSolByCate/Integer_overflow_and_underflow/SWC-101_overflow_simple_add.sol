pragma solidity 0.4.24;

contract Overflow_Add {
    uint public balance = 1;

    function add(uint256 deposit) public {
        balance += deposit;
    }
}

/*
description: Plain and simple ADD overflow example
issues:
- id: SWC-101
  count: 1
  locations:
  - bytecode_offsets:
      '0x75ad68f906456e1cbfd6190a8f2e2dc5cb2794af4a4929448378642c992e151a': [168]
    line_numbers:
      overflow_simple_add.sol: [7]

*/
*/