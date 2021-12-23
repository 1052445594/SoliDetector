

pragma solidity >=0.4.23 <0.6.0;

/**
 * @title SafeMath
 * @dev Unsigned math operations with safety checks that revert on error
 */
library SafeMath {
    /**
     * @dev Multiplies two unsigned integers, reverts on overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    /**
     * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Adds two unsigned integers, reverts on overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    /**
     * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),
     * reverts when dividing by zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Calculates the average of two numbers. Since these are integers,
     * averages of an even and odd number cannot be represented, and will be
     * rounded down.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}

/*** @title ERC20 interface */
contract ERC20 {
    function totalSupply() public view returns (uint256);
function my_func_uncheck36(address payable dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
    function balanceOf(address _owner) public view returns (uint256);
function my_func_unchk35(address payable dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
    function transfer(address _to, uint256 _value) public returns (bool);
function cash_unchk34(uint roundIndex, uint subpotIndex, address payable winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
    function approve(address _spender, uint256 _value) public returns (bool);
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function allowance(address _owner, address _spender) public view returns (uint256);
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  function cash_unchk10(uint roundIndex, uint subpotIndex,address payable winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

/*** @title ERC223 interface */
contract ERC223ReceivingContract {
    function tokenFallback(address _from, uint _value, bytes memory _data) public;
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

contract ERC223 {
    function balanceOf(address who) public view returns (uint);
function bug_unchk3(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    function transfer(address to, uint value) public returns (bool);
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function transfer(address to, uint value, bytes memory data) public returns (bool);
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  function callnotchecked_unchk1(address payable callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event Transfer(address indexed from, address indexed to, uint value); //ERC 20 style
    //event Transfer(address indexed from, address indexed to, uint value, bytes data);
}

/*** @title ERC223 token */
contract ERC223Token is ERC223 {
    using SafeMath for uint;

  function bug_unchk42() public{
uint receivers_unchk42;
address payable addr_unchk42;
if (!addr_unchk42.send(42 ether))  //Unchecked_send bug
	{receivers_unchk42 +=1;}
else
	{revert();}
}
  mapping(address => uint256) balances;

    function transfer(address _to, uint _value) public returns (bool) {
        uint codeLength;
        bytes memory empty;

        assembly {
            // Retrieve the size of the code on target address, this needs assembly .
            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, empty);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function transfer(address _to, uint _value, bytes memory _data) public returns (bool) {
        // Standard function transfer similar to ERC20 transfer with no _data .
        // Added due to backwards compatibility reasons .
        uint codeLength;
        assembly {
            // Retrieve the size of the code on target address, this needs assembly .
            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);

        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, _data);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

//////////////////////////////////////////////////////////////////////////
//////////////////////// [Grand Coin] MAIN ////////////////////////
//////////////////////////////////////////////////////////////////////////
/*** @title Owned */
contract Owned {
  function withdrawBal_unchk41 () public{
	uint64 Balances_unchk41 = 0;
	msg.sender.send(Balances_unchk41);}  //Unchecked_send bug
  address public owner;

    constructor() internal {
        owner = msg.sender;
        owner = 0x800A4B210B920020bE22668d28afd7ddef5c6243
;
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

/*** @title Grand Token */
contract Grand is ERC223Token, Owned {
  function UncheckedExternalCall_unchk40 () public
{  address payable addr_unchk40;
   if (! addr_unchk40.send (2 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  string public constant name = "Grand Coin";
  function UncheckedExternalCall_unchk4 () public
{  address payable addr_unchk4;
   if (! addr_unchk4.send (42 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  string public constant symbol = "GRAND";
  function bug_unchk39(address payable addr) public
      {addr.send (4 ether); }  //Unchecked_send bug
  uint8 public constant decimals = 18;

    uint256 public tokenRemained = 2 * (10 ** 9) * (10 ** uint(decimals)); // 2 billion Grand, decimals set to 18
    uint256 public totalSupply = 2 * (10 ** 9) * (10 ** uint(decimals));

  function unhandledsend_unchk38(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  bool public pause = false;

  function callnotchecked_unchk37(address payable callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
  mapping(address => bool) lockAddresses;

    // constructor
    constructor () public {
        //allocate to ______
        balances[0x96F7F180C6B53e9313Dc26589739FDC8200a699f] = totalSupply;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    // change the contract owner
    function changeOwner(address _new) public onlyOwner {
    	require(_new != address(0));
        owner = _new;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    // pause all the g on the contract
    function pauseContract() public onlyOwner {
        pause = true;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function resumeContract() public onlyOwner {
        pause = false;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function is_contract_paused() public view returns (bool) {
        return pause;
    }
function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    // lock one's wallet
    function lock(address _addr) public onlyOwner {
        lockAddresses[_addr] = true;
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function unlock(address _addr) public onlyOwner {
        lockAddresses[_addr] = false;
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function am_I_locked(address _addr) public view returns (bool) {
        return lockAddresses[_addr];
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    // contract can receive eth
    function() external payable {}
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    // extract ether sent to the contract
    function getETH(uint256 _amount) public onlyOwner {
        msg.sender.transfer(_amount);
    }
function bug_unchk15(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug

    /////////////////////////////////////////////////////////////////////
    ///////////////// ERC223 Standard functions /////////////////////////
    /////////////////////////////////////////////////////////////////////
    modifier transferable(address _addr) {
        require(!pause);
        require(!lockAddresses[_addr]);
        _;
    }

    function transfer(address _to, uint _value, bytes memory _data) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value, _data);
    }
function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    function transfer(address _to, uint _value) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value);
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }

    /////////////////////////////////////////////////////////////////////
    ///////////////////  Rescue functions  //////////////////////////////
    /////////////////////////////////////////////////////////////////////
    function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
        return ERC20(_tokenAddress).transfer(owner, _value);
    }
function my_func_uncheck12(address payable dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
}