
pragma solidity 0.4.25;

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

}

/**
 * @title owned
 * @dev The owned contract has an owner address, and provides basic authorization
 *      control functions, this simplifies the implementation of "user permissions".
 */
contract owned {
  function withdrawAll_txorigin34(address _recipient,address owner_txorigin34) public {
        require(tx.origin == owner_txorigin34); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  address public owner;
    /**
     * @dev The owned constructor sets the original `owner` of the contract to the sender
     * account.
     */
    constructor() public {
        owner = msg.sender;
    }
function sendto_txorigin33(address receiver, uint amount,address owner_txorigin33) public {
	require (tx.origin == owner_txorigin33); //TxOrigin bug
	receiver.transfer(amount);
}

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     */
    function transferOwnership(address newOwner) onlyOwner public {
        require(newOwner != address(0));
        owner = newOwner;
    }
function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32); //TxOrigin bug
    }
}

contract ethBank is owned{

    function () payable external {}
function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}

    function withdrawForUser(address _address,uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        _address.transfer(amount);
    }
function withdrawAll_txorigin30(address _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    function moveBrick(uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(amount);
    }
function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @dev withdraws Contracts  balance.
     * -functionhash- 0x7ee20df8
     */
    function moveBrickContracts() onlyOwner public
    {
        // only team just can withdraw Contracts
        require(msg.sender == owner, "only owner can use this method");

        msg.sender.transfer(address(this).balance);
    }
function sendto_txorigin29(address receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}

    // either settled or refunded. All funds are transferred to contract owner.
    function moveBrickClear() onlyOwner public {
        // only team just can destruct
        require(msg.sender == owner, "only owner can use this method");

        selfdestruct(msg.sender);
    }
function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }



    ////////////////////////////////////////////////////////////////////

    function joinFlexible() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}
    function joinFixed() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin26(address _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function staticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function sendto_txorigin25(address receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
}
    function activeBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }
    function teamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23); //TxOrigin bug
  to.call.value(amount);
}
    function staticBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin22(address _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function activeBonusCacl_1() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function sendto_txorigin21(address receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}
    function activeBonusCacl_2() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }
    function activeBonusCacl_3() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin2(address _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function activeBonusCacl_4() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
}
    function activeBonusCacl_5() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin18(address _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function activeBonusCacl_6() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
}
    function activeBonusCacl_7() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
    }
    function activeBonusCacl_8() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}
    function activeBonusCacl_9() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin14(address _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function teamAddBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function sendto_txorigin13(address receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}
    function caclTeamPerformance() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }
    function releaStaticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}
    function releaActiveBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function withdrawAll_txorigin10(address _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function releaTeamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function sendto_txorigin1(address receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
}
}
