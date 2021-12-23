
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
  function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  address public owner;
    /**
     * @dev The owned constructor sets the original `owner` of the contract to the sender
     * account.
     */
    constructor() public {
        owner = msg.sender;
    }
bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
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
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

contract ethBank is owned{

    function () payable external {}
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function withdrawForUser(address _address,uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        _address.transfer(amount);
    }
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function moveBrick(uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(amount);
    }
function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

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
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    // either settled or refunded. All funds are transferred to contract owner.
    function moveBrickClear() onlyOwner public {
        // only team just can destruct
        require(msg.sender == owner, "only owner can use this method");

        selfdestruct(msg.sender);
    }
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }



    ////////////////////////////////////////////////////////////////////

    function joinFlexible() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function joinFixed() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function staticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function teamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function staticBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_1() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_2() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_3() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    function activeBonusCacl_4() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_5() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_6() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_7() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function activeBonusCacl_8() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    function activeBonusCacl_9() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    function teamAddBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
    function caclTeamPerformance() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
    function releaStaticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
    function releaActiveBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
    function releaTeamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        msg.sender.transfer(address(this).balance);

    }
function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
}
