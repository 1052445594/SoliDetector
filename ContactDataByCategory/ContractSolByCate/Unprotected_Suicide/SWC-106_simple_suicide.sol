pragma solidity ^0.4.22;

contract SimpleSuicide {

  function sudicideAnyone() {
    selfdestruct(msg.sender);
  }

}
/*
*description: Trivially killable contract
*issues:
*- id: SWC-106
*  count: 1
*  locations:
*  - bytecode_offsets:
*      '0x4a7cd89c26299585719540e997a804e52586a1c829c59bee8167a9ac33bbc000': [112]
*    line_numbers:
*      simple_suicide.sol: [6]
*/