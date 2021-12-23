pragma solidity ^0.5.0;

contract ModifierEntrancy {

  mapping (address => uint) public tokenBalance;
  string constant name = "Nu Token";
  Bank bank;
  
  constructor() public{
      bank = new Bank();
  }

  //If a contract has a zero balance and supports the token give them some token
  function airDrop() hasNoBalance supportsToken  public{
    tokenBalance[msg.sender] += 20;
  }
  
  //Checks that the contract responds the way we want
  modifier supportsToken() {
    require(keccak256(abi.encodePacked("Nu Token")) == bank.supportsToken());
    _;
  }
  
  //Checks that the caller has a zero balance
  modifier hasNoBalance {
      require(tokenBalance[msg.sender] == 0);
      _;
  }
}

contract Bank{

    function supportsToken() external returns(bytes32) {
        return keccak256(abi.encodePacked("Nu Token"));
    }

}
/*
*description: Reentrancy (state change after external call)
*issues:
*- id: SWC-107
*  count: 1
*  locations:
*  - bytecode_offsets: {}
*    line_numbers:
*      modifier_reentrancy.sol: [14, 15]
*/