/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 */

//Multi-transactional, single function
//Arithmetic instruction reachable

pragma solidity ^0.4.23;

contract IntegerOverflowMultiTxOneFuncFeasible {
    uint256 private initialized = 0;
    uint256 public count = 1;

    function run(uint256 input) public {
        if (initialized == 0) {
            initialized = 1;
            return;
        }

        count -= input;
    }
}


/*
description: Integer overflow (reachable in 2 transactions)
issues:
- id: SWC-101
  count: 1
  locations:
  - bytecode_offsets:
      '0xf2c9f895c91bab86eb41e999544f854169741ed65e9bfcce0108a3adfa7b8be3': [196]
    line_numbers:
      integer_overflow_multitx_onefunc_feasible.sol: [21]
*/
*/