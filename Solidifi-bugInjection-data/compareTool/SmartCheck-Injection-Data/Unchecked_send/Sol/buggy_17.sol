

pragma solidity 0.4.25;


library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    require(c / a == b);
    return c;
  }
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b > 0);
    uint256 c = a / b;
    return c;
  }
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;
    return c;
  }
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a && c >= b);
    return c;
  }
  function mod(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b != 0);
    return a % b;
  }
  function max256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a >= b ? a : b;
  }
  function min256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }

}




contract owned {
function my_func_uncheck36(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  address public owner;

  constructor() public {
    owner = msg.sender;
  }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) onlyOwner public {
    owner = newOwner;
  }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

interface tokenRecipient {
  function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external;
}


contract TokenERC20 {
  using SafeMath for uint256;
function my_func_unchk35(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  string public name;
function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  string public symbol;
bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  uint8 public decimals;
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 public totalSupply;

function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => uint256) public balanceOf;
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => mapping (address => uint256)) public allowance;

function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event Transfer(address indexed from, address indexed to, uint256 value);

function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event Burn(address indexed from, uint256 value);


  constructor(string memory tokenName, string memory tokenSymbol, uint8 dec) public {
    decimals = dec;
    name = tokenName;                                   // Set the name for display purposes
    symbol = tokenSymbol;   
  }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    balanceOf[_from] = balanceOf[_from].sub(_value);
    balanceOf[_to] = balanceOf[_to].add(_value);
    emit Transfer(_from, _to, _value);
  }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function transfer(address _to, uint256 _value) public returns (bool success) {
    _transfer(msg.sender, _to, _value);
    return true;
  }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
		_transfer(_from, _to, _value);
		return true;
  }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }


  function approve(address _spender, uint256 _value) public returns (bool success) {
    allowance[msg.sender][_spender] = _value;
    emit Approval(msg.sender, _spender, _value);
    return true;
  }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


  function approveAndCall(address _spender, uint256 _value, bytes memory _extraData) public returns (bool success) {
    tokenRecipient spender = tokenRecipient(_spender);
    if (approve(_spender, _value)) {
      spender.receiveApproval(msg.sender, _value, address(this), _extraData);
      return true;
    }
  }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

}


/******************************************/
/*       ADVANCED TOKEN STARTS HERE       */
/******************************************/

contract AZT is owned, TokenERC20  {
function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

	string _tokenName = "AZ FundChain";  function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

	string _tokenSymbol = "AZT";
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint8 _decimals = 18;

function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address[] public frozenAddresses;
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  bool public tokenFrozen;

  struct frozenWallet {
    bool isFrozen; //true or false
    uint256 rewardedAmount; //amount
    uint256 frozenAmount; //amount
    uint256 frozenTime; // in days
  }

function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => frozenWallet) public frozenWallets;



  constructor() TokenERC20(_tokenName, _tokenSymbol, _decimals) public {

    /*Wallet A */
    frozenAddresses.push(address(0x9fd50776F133751E8Ae6abE1Be124638Bb917E05));
    frozenWallets[frozenAddresses[0]] = frozenWallet({
      isFrozen: true,
      rewardedAmount: 30000000 * 10 ** uint256(decimals),
      frozenAmount: 0 * 10 ** uint256(decimals),
      frozenTime: now + 1 * 1 hours //seconds, minutes, hours, days
    });

    for (uint256 i = 0; i < frozenAddresses.length; i++) {
      balanceOf[frozenAddresses[i]] = frozenWallets[frozenAddresses[i]].rewardedAmount;
      totalSupply = totalSupply.add(frozenWallets[frozenAddresses[i]].rewardedAmount);
    }
  }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    require(checkFrozenWallet(_from, _value));
    balanceOf[_from] = balanceOf[_from].sub(_value);      
    balanceOf[_to] = balanceOf[_to].add(_value);     
    emit Transfer(_from, _to, _value);
  }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function checkFrozenWallet(address _from, uint _value) public view returns (bool) {
    return(
      _from==owner || 
      (!tokenFrozen && 
      (!frozenWallets[_from].isFrozen || 
       now>=frozenWallets[_from].frozenTime || 
       balanceOf[_from].sub(_value)>=frozenWallets[_from].frozenAmount))
    );
  }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug


  function burn(uint256 _value) onlyOwner public returns (bool success) {
    balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);   // Subtract from the sender
    totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    emit Burn(msg.sender, _value);
    return true;
  }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

  function burnFrom(address _from, uint256 _value) public returns (bool success) {
    balanceOf[_from] = balanceOf[_from].sub(_value);                          // Subtract from the targeted balance
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);   // Subtract from the sender's allowance
    totalSupply = totalSupply.sub(_value);                              // Update totalSupply
    emit Burn(_from, _value);
    return true;
  }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }

  function freezeToken(bool freeze) onlyOwner public {
    tokenFrozen = freeze;
  }
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
}
