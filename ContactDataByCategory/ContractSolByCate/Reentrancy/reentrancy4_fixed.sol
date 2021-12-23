pragma solidity ^0.4.24;

contract Reentrancy {
    mapping (address => uint) userBalance;
   
    function getBalance(address u) view public returns(uint){
        return userBalance[u];
    }

    function addToBalance() payable public{
        userBalance[msg.sender] += msg.value;
    }   
	
    function withdrawBalance_fixed_4() public{
        // The state can be changed
        // But it is fine, as it can only occur if the transaction fails
        uint amount = userBalance[msg.sender];
        userBalance[msg.sender] = 0;
        if( (msg.sender.call.value(amount)() ) ){
            return;
        }
        else{
            userBalance[msg.sender] = amount;
        }
    }
 

}


