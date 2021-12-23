//Single transaction overflow

pragma solidity ^0.4.11;

contract IntegerOverflowMappingSym1 {
    mapping(uint256 => uint256) map;

    function init(uint256 k, uint256 v) public {
        map[k] -= v;
    }
}


/*
*description: Single transaction overflow in mapping
*issues:
*- id: SWC-101
*  count: 1
*  locations:
*  - bytecode_offsets:
*      '0x3c60415e40f53b65bb32a782b5ca77cb5fdf3e2bbd5e942ce263cd674f02444c': [145]
*    line_numbers:
*     integer_overflow_mapping_sym_1.sol: [9]
*/