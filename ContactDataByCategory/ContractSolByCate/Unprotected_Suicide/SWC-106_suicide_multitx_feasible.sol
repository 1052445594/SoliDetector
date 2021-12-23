pragma solidity ^0.4.23;

contract SuicideMultiTxFeasible {
    uint256 private initialized = 0;
    uint256 public count = 1;

    function init() public {
        initialized = 1;
    }

    function run(uint256 input) {
        if (initialized == 0) {
            return;
        }

        selfdestruct(msg.sender);
    }
}
/*
*description: Contract can be killed with 2 transactions
*issues:
*- id: SWC-106
*  count: 1
*  locations:
*  - bytecode_offsets:
*      '0x4c20e9cbecd3c45ce0150249b859cb413b468db3bbff8cc29aaee21ce64f7c5d': [233]
*    line_numbers:
*      suicide_multitx_feasible.sol: [16]
*/