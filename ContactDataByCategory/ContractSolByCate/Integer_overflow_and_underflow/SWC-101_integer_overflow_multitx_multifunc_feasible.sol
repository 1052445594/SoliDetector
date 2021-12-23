/*
 * @source: https://github.com/ConsenSys/evm-analyzer-benchmark-suite
 * @author: Suhabe Bugrara
 */

//Multi-transactional, multi-function
//Arithmetic instruction reachable

pragma solidity ^0.4.23;

contract IntegerOverflowMultiTxMultiFuncFeasible {
    uint256 private initialized = 0;
    uint256 public count = 1;

    function init() public {
        initialized = 1;
    }

    function run(uint256 input) {
        if (initialized == 0) {
            return;
        }

        count -= input;
    }
}


/*
description: Integer overflow (reachable by calling 2 functions over 2 transactions)
issues:
- id: SWC-101
  count: 1
  locations:
  - bytecode_offsets:
      '0x956414565a80029c2be2b7c0d39740bf5ad294db15af3a02cb64509638902617': [218]
    line_numbers:
      integer_overflow_multitx_multifunc_feasible.sol: [24]
*/
*/