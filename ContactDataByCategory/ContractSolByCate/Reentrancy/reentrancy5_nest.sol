pragma solidity ^0.4.24;

contract Reentrancy {
    mapping (address => uint) userBalance;
   
    function getBalance(address u) view public returns(uint){
        return userBalance[u];
    }

    function addToBalance() payable public{
        userBalance[msg.sender] += msg.value;
    }   
	

    function withdrawBalance_nested() public{
        uint amount = userBalance[msg.sender];
        if( ! (msg.sender.call.value(amount/2)() ) ){
            msg.sender.call.value(amount/2)();
            userBalance[msg.sender] = 0;
        }
    }
 

}


