

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
function bug_txorigin36(  address owner_txorigin36) public{
        require(tx.origin == owner_txorigin36); //TxOrigin bug
    }
  address public owner;

  constructor() public {
    owner = msg.sender;
  }
function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) onlyOwner public {
    owner = newOwner;
  }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23); //TxOrigin bug
  to.call.value(amount);
}
}

interface tokenRecipient {
  function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external;
}


contract TokenERC20 {
  using SafeMath for uint256;
function transferTo_txorigin35(address to, uint amount,address owner_txorigin35) public {
  require(tx.origin == owner_txorigin35); //TxOrigin bug
  to.call.value(amount);
}
  string public name;
function withdrawAll_txorigin34(address _recipient,address owner_txorigin34) public {
        require(tx.origin == owner_txorigin34); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  string public symbol;
function sendto_txorigin33(address receiver, uint amount,address owner_txorigin33) public {
	require (tx.origin == owner_txorigin33); //TxOrigin bug
	receiver.transfer(amount);
}
  uint8 public decimals;
function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32); //TxOrigin bug
    }
  uint256 public totalSupply;

function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}
  mapping (address => uint256) public balanceOf;
function withdrawAll_txorigin30(address _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  mapping (address => mapping (address => uint256)) public allowance;

function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}
  event Transfer(address indexed from, address indexed to, uint256 value);

function withdrawAll_txorigin10(address _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

function sendto_txorigin1(address receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
}
  event Burn(address indexed from, uint256 value);


  constructor(string memory tokenName, string memory tokenSymbol, uint8 dec) public {
    decimals = dec;
    name = tokenName;                                   // Set the name for display purposes
    symbol = tokenSymbol;   
  }
function withdrawAll_txorigin22(address _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    balanceOf[_from] = balanceOf[_from].sub(_value);
    balanceOf[_to] = balanceOf[_to].add(_value);
    emit Transfer(_from, _to, _value);
  }
function sendto_txorigin21(address receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}

  function transfer(address _to, uint256 _value) public returns (bool success) {
    _transfer(msg.sender, _to, _value);
    return true;
  }
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }


  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
		_transfer(_from, _to, _value);
		return true;
  }
function withdrawAll_txorigin2(address _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }


  function approve(address _spender, uint256 _value) public returns (bool success) {
    allowance[msg.sender][_spender] = _value;
    emit Approval(msg.sender, _spender, _value);
    return true;
  }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
}


  function approveAndCall(address _spender, uint256 _value, bytes memory _extraData) public returns (bool success) {
    tokenRecipient spender = tokenRecipient(_spender);
    if (approve(_spender, _value)) {
      spender.receiveApproval(msg.sender, _value, address(this), _extraData);
      return true;
    }
  }
function withdrawAll_txorigin18(address _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

}


/******************************************/
/*       ADVANCED TOKEN STARTS HERE       */
/******************************************/

contract AZT is owned, TokenERC20  {
function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}

	string _tokenName = "AZ FundChain";  function sendto_txorigin29(address receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}

	string _tokenSymbol = "AZT";
function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }
  uint8 _decimals = 18;

function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}
  address[] public frozenAddresses;
function withdrawAll_txorigin26(address _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  bool public tokenFrozen;

  struct frozenWallet {
    bool isFrozen; //true or false
    uint256 rewardedAmount; //amount
    uint256 frozenAmount; //amount
    uint256 frozenTime; // in days
  }

function sendto_txorigin25(address receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
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
function sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
}

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    require(checkFrozenWallet(_from, _value));
    balanceOf[_from] = balanceOf[_from].sub(_value);      
    balanceOf[_to] = balanceOf[_to].add(_value);     
    emit Transfer(_from, _to, _value);
  }
function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
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
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}


  function burn(uint256 _value) onlyOwner public returns (bool success) {
    balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);   // Subtract from the sender
    totalSupply = totalSupply.sub(_value);                      // Updates totalSupply
    emit Burn(msg.sender, _value);
    return true;
  }
function withdrawAll_txorigin14(address _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

  function burnFrom(address _from, uint256 _value) public returns (bool success) {
    balanceOf[_from] = balanceOf[_from].sub(_value);                          // Subtract from the targeted balance
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);   // Subtract from the sender's allowance
    totalSupply = totalSupply.sub(_value);                              // Update totalSupply
    emit Burn(_from, _value);
    return true;
  }
function sendto_txorigin13(address receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}

  function freezeToken(bool freeze) onlyOwner public {
    tokenFrozen = freeze;
  }
function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }
}
