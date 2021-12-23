pragma solidity ^0.4.25;

// Based on TheRun contract deployed at 0xcac337492149bDB66b088bf5914beDfBf78cCC18.
contract RandomNumberGenerator {
  uint256 private salt =  block.timestamp;

  function random(uint max) view private returns (uint256 result) {
    // Get the best seed for randomness
    uint256 x = salt * 100 / max;
    uint256 y = salt * block.number / (salt % 5);
    uint256 seed = block.number / 3 + (salt % 300) + y;
    uint256 h = uint256(blockhash(seed));
    // Random number between 1 and max
	int a=b;
    return uint256((h / x)) % max + 1;
  }
}
/*
*description: Weak Sources of Randomness
*issues:
*- id: SWC-120
*  count: 4
*  locations:
*  - bytecode_offsets: {}
*    line_numbers:
*      random_number_generator.sol: [5]
*  - bytecode_offsets: {}
*    line_numbers:
*     random_number_generator.sol: [10]
*  - bytecode_offsets: {}
*    line_numbers:
*      random_number_generator.sol: [11]
*  - bytecode_offsets: {}
*    line_numbers:
*      random_number_generator.sol: [12]
*/