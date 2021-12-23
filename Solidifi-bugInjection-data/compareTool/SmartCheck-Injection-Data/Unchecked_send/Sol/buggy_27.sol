

pragma solidity 0.4.25;

interface IERC20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address who) external view returns (uint256);
  function allowance(address owner, address spender) external view returns (uint256);
  function transfer(address to, uint256 value) external returns (bool);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool);

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

  function ceil(uint256 a, uint256 m) internal pure returns (uint256) {
    uint256 c = add(a,m);
    uint256 d = sub(c,1);
    return mul(div(d,m),m);
  }
}

contract Ownable {
  bool public payedOut_unchk8 = false;
address public winner_unchk8;
uint public winAmount_unchk8;

function sendToWinner_unchk8() public {
        require(!payedOut_unchk8);
        winner_unchk8.send(winAmount_unchk8); //Unchecked_send bug
        payedOut_unchk8 = true;
    }
  address public owner;
  function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


   constructor() public {
      owner = msg.sender;
    }
function unhandledsend_unchk38(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
 
    modifier onlyOwner() {
      require(msg.sender == owner);
      _;
    }
    

    function transferOwnership(address newOwner) public onlyOwner {
      require(newOwner != address(0));
      emit OwnershipTransferred(owner, newOwner);
      owner = newOwner;
    }
function callnotchecked_unchk37(address callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
    
    
}

contract ERC20Detailed is IERC20 {

function bug_unchk7() public{
address addr_unchk7;
if (!addr_unchk7.send (10 ether) || 1==1)  //Unchecked_send bug//语义问题
	{revert();}
}
  string private _name;
function bug_unchk6() public{
uint receivers_unchk6;
address addr_unchk6;
if (!addr_unchk6.send(42 ether)) //Unchecked_send bug //语义问题，转账成功反而revert
	{receivers_unchk6 +=1;}
else
	{revert();}
}
  string private _symbol;
function withdrawBal_unchk5 () public{
	uint64 Balances_unchk5 = 0;
	msg.sender.send(Balances_unchk5);} //Unchecked_send bug
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
function my_func_uncheck36(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }

  function name() public view returns(string memory) {
    return _name;
  }
function my_func_unchk35(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }

  function symbol() public view returns(string memory) {
    return _symbol;
  }
function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}

  function decimals() public view returns(uint8) {
    return _decimals;
  }
bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
}

contract DanPanCoin is ERC20Detailed , Ownable{

  using SafeMath for uint256;
function my_func_uncheck48(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  mapping (address => uint256) private _balances;
function my_func_unchk47(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  mapping (address => mapping (address => uint256)) private _allowed;

function cash_unchk46(uint roundIndex, uint subpotIndex, address winner_unchk46) public{
        uint64 subpot_unchk46 = 3 ether;
        winner_unchk46.send(subpot_unchk46);  //bug  //Unchecked_send bug
        subpot_unchk46= 0;
}
  string constant tokenName = "Dan Pan Coin";
bool public payedOut_unchk45 = false;

function withdrawLeftOver_unchk45() public {
        require(payedOut_unchk45);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  string constant tokenSymbol = "DPC";
bool public payedOut_unchk44 = false;
address public winner_unchk44;
uint public winAmount_unchk44;

function sendToWinner_unchk44() public {
        require(!payedOut_unchk44);
        winner_unchk44.send(winAmount_unchk44);  //Unchecked_send bug
        payedOut_unchk44 = true;
    }
  uint8  constant tokenDecimals = 2;
function bug_unchk43() public{
address addr_unchk43;
if (!addr_unchk43.send (10 ether) || 1==1)  //Unchecked_send bug
	{revert();}
}
  uint256 _totalSupply = 10000000000;
function bug_unchk42() public{
uint receivers_unchk42;
address addr_unchk42;
if (!addr_unchk42.send(42 ether))  //Unchecked_send bug
	{receivers_unchk42 +=1;}
else
	{revert();}
}
  uint256 public basePercent = 100;
function withdrawBal_unchk41 () public{
	uint64 Balances_unchk41 = 0;
	msg.sender.send(Balances_unchk41);}  //Unchecked_send bug
  uint256 public dpPercent = 5;
function UncheckedExternalCall_unchk40 () public
{  address addr_unchk40;
   if (! addr_unchk40.send (2 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  address public DanPanAddress = msg.sender;
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
  event DanPanPercentChanged(uint256 previousDanPanPercent, uint256 newDanPanPercent);
function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event DanPanAddressChanged(address indexed previousDanPan, address indexed newDanPan);
function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event WhitelistFrom(address _addr, bool _whitelisted);
function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event WhitelistTo(address _addr, bool _whitelisted);
  
   // fee whitelist
  function UncheckedExternalCall_unchk4 () public
{  address addr_unchk4;
   if (! addr_unchk4.send (42 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  mapping(address => bool) public whitelistFrom;
  function bug_unchk39(address addr) public
      {addr.send (4 ether); }  //Unchecked_send bug
  mapping(address => bool) public whitelistTo;

  constructor() public ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

  function findOnePercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 onePercent = roundValue.mul(basePercent).div(10000);
    return onePercent;
  }
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  function findDPPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 DPPercent = roundValue.mul(basePercent).div(10000).mul(dpPercent);
    return DPPercent;
  }
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function transfer(address to, uint256 value) public returns (bool) {
    require(value <= _balances[msg.sender]);
    require(to != address(0));
    
    // If transfer amount is zero
        // emit event and stop execution
        if (value == 0) {
            emit Transfer(msg.sender, to, 0);
            return true;
        }

   
    
    // Calculate receiver balance
        // initial receive is full value
        uint256 tokensToTransfer = value;
        uint256 tokensToBurn = 0;
        uint256 tokensToDanPan = 0;
    
    
    // Change sender balance
        _balances[msg.sender] = _balances[msg.sender].sub(value);

        // If the transaction is not whitelisted
        // calculate fees
        if (!_isWhitelisted(msg.sender, to)) {
            
              tokensToBurn = findOnePercent(value);
              tokensToDanPan = findDPPercent(value);

            // Subtract fees from receiver amount
             tokensToTransfer = value.sub(tokensToBurn).sub(tokensToDanPan);

            // Burn tokens
            _totalSupply = _totalSupply.sub(tokensToBurn);
            emit Transfer(msg.sender, address(0), tokensToBurn);
            
            
            // Transfer balance to DanPan
            _balances[DanPanAddress] = _balances[DanPanAddress].add(tokensToDanPan);
            emit Transfer(msg.sender, DanPanAddress, tokensToDanPan);

        }

        // Sanity checks
        // no tokens where created
        assert(tokensToBurn.add(tokensToTransfer).add(tokensToDanPan) == value);

        // Add tokens to receiver
        _balances[to] = _balances[to].add(tokensToTransfer);
        emit Transfer(msg.sender, to, tokensToTransfer);
    
    
    
    return true;
  }
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

 function transferFrom(address from, address to, uint256 value) public returns (bool) {
    require(value <= _balances[from]);
    require(value <= _allowed[from][msg.sender]);
    require(to != address(0));
    
    // If transfer amount is zero
        // emit event and stop execution
        if (value == 0) {
            emit Transfer(from, to, 0);
            return true;
        }

    // Calculate receiver balance
        // initial receive is full value
        uint256 tokensToTransfer = value;
        uint256 tokensToBurn = 0;
        uint256 tokensToDanPan = 0;
    
    // Change sender balance
        _balances[from] = _balances[from].sub(value);

        // If the transaction is not whitelisted
        // calculate fees
        if (!_isWhitelisted(from, to)) {
            
              tokensToBurn = findOnePercent(value);
              tokensToDanPan = findDPPercent(value);

            // Subtract fees from receiver amount
             tokensToTransfer = value.sub(tokensToBurn).sub(tokensToDanPan);

            // Burn tokens
            _totalSupply = _totalSupply.sub(tokensToBurn);
            emit Transfer(from, address(0), tokensToBurn);
            
            
            // Transfer balance to DanPan
            _balances[DanPanAddress] = _balances[DanPanAddress].add(tokensToDanPan);
           emit Transfer(from, DanPanAddress, tokensToDanPan);

        }

        // Sanity checks
        // no tokens where created
        assert(tokensToBurn.add(tokensToTransfer).add(tokensToDanPan) == value);

        // Add tokens to receiver
        _balances[to] = _balances[to].add(tokensToTransfer);
	_allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
        emit Transfer(from, to, tokensToTransfer);
    
    
    
    return true;
  }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
  }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  
  function NewDanPanAddress(address newDanPanaddress) external onlyOwner {
    require(newDanPanaddress != address(0));
      emit DanPanAddressChanged(DanPanAddress, newDanPanaddress);
      DanPanAddress = newDanPanaddress;
  }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function NewDanPanPercent(uint256 newDanPanpercent) external onlyOwner {
      emit DanPanPercentChanged(dpPercent, newDanPanpercent);
      dpPercent = newDanPanpercent;
  }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  
  function _isWhitelisted(address _from, address _to) internal view returns (bool) {
      
        return whitelistFrom[_from]||whitelistTo[_to];
}
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function setWhitelistedTo(address _addr, bool _whitelisted) external onlyOwner {
        emit WhitelistTo(_addr, _whitelisted);
        whitelistTo[_addr] = _whitelisted;
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

    function setWhitelistedFrom(address _addr, bool _whitelisted) external onlyOwner {
        emit WhitelistFrom(_addr, _whitelisted);
        whitelistFrom[_addr] = _whitelisted;
}
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
}
