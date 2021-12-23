/*
 * @source: https://capturetheether.com/challenges/math/token-sale/
 * @author: Steve Marx
 */

pragma solidity ^0.4.21;

contract TokenSaleChallenge {
    mapping(address => uint256) public balanceOf;
    uint256 constant PRICE_PER_TOKEN = 1 ether;

    function TokenSaleChallenge(address _player) public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance < 1 ether;
    }

    function buy(uint256 numTokens) public payable {
        require(msg.value == numTokens * PRICE_PER_TOKEN);

        balanceOf[msg.sender] += numTokens;
    }

    function sell(uint256 numTokens) public {
        require(balanceOf[msg.sender] >= numTokens);

        balanceOf[msg.sender] -= numTokens;
        msg.sender.transfer(numTokens * PRICE_PER_TOKEN);
    }
}
/*
description: Integer overflow leading into Ether theft
issues:
- id: SWC-101
  count: 3
  locations:
  - bytecode_offsets:
      '0x28bca0703928a8e32ea9dcdc965ef2fc3e5957d467ea62c7df7e29897930512d': [390]
    line_numbers:
      tokensalechallenge.sol: [21]
  - bytecode_offsets:
      '0x28bca0703928a8e32ea9dcdc965ef2fc3e5957d467ea62c7df7e29897930512d': [472]
    line_numbers:
      tokensalechallenge.sol: [23]
  - bytecode_offsets:
      '0x28bca0703928a8e32ea9dcdc965ef2fc3e5957d467ea62c7df7e29897930512d': [672]
    line_numbers:
      tokensalechallenge.sol: [30]
- id: SWC-105
  count: 1
  locations:
  - bytecode_offsets:
      '0x28bca0703928a8e32ea9dcdc965ef2fc3e5957d467ea62c7df7e29897930512d': [693]
    line_numbers:
      tokensalechallenge.sol: [30]
