

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

contract ERC20Detailed is IERC20 {

uint256 counter_re_ent35 =0;
function callme_re_ent35() public{
        require(counter_re_ent35<=5);
        msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent35 += 1;
    }
  string private _name;
bool not_called_re_ent34 = true;
function bug_re_ent34() public{
        require(not_called_re_ent34);
        msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent34 = false;
    }
  string private _symbol;
mapping(address => uint) userBalance_re_ent33;
function withdrawBalance_re_ent33() public{
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool success,)= msg.sender.call.value(userBalance_re_ent33[msg.sender])(""); //Reentrancy bug
        if( ! success ){
            revert();
        }
        userBalance_re_ent33[msg.sender] = 0;
    }
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
mapping(address => uint) userBalance_re_ent26;
function withdrawBalance_re_ent26() public{
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool success,)= msg.sender.call.value(userBalance_re_ent26[msg.sender])(""); //Reentrancy bug
        if( ! success ){
            revert();
        }
        userBalance_re_ent26[msg.sender] = 0;
    }

  function name() public view returns(string memory) {
    return _name;
  }
mapping(address => uint) redeemableEther_re_ent25;
function claimReward_re_ent25() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent25[msg.sender] > 0);
        uint transferValue_re_ent25 = redeemableEther_re_ent25[msg.sender];
        msg.sender.call.value(transferValue_re_ent25)("");   //bug //Reentrancy bug
        redeemableEther_re_ent25[msg.sender] = 0;
    }

  function symbol() public view returns(string memory) {
    return _symbol;
  }
mapping(address => uint) balances_re_ent24;
function withdrawFunds_re_ent24 (uint256 _weiToWithdraw) public {
        require(balances_re_ent24[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent24[msg.sender] -= _weiToWithdraw;
    }

  function decimals() public view returns(uint8) {
    return _decimals;
  }
address lastPlayer_re_ent23;
      uint jackpot_re_ent23;
	  function buyTicket_re_ent23() public{
	   lastPlayer_re_ent23.call.value(jackpot_re_ent23)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent23 = msg.sender;
      jackpot_re_ent23    = address(this).balance;
    }
}

contract BIGBOMBv2 is ERC20Detailed {

  using SafeMath for uint256;
mapping(address => uint) redeemableEther_re_ent32;
function claimReward_re_ent32() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent32[msg.sender] > 0);
        uint transferValue_re_ent32 = redeemableEther_re_ent32[msg.sender];
        msg.sender.call.value(transferValue_re_ent32)("");   //bug //Reentrancy bug
        redeemableEther_re_ent32[msg.sender] = 0;
    }
  mapping (address => uint256) private _balances;
mapping(address => uint) balances_re_ent31;
function withdrawFunds_re_ent31 (uint256 _weiToWithdraw) public {
        require(balances_re_ent31[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent31[msg.sender] -= _weiToWithdraw;
    }
  mapping (address => mapping (address => uint256)) private _allowed;

address lastPlayer_re_ent30;
      uint jackpot_re_ent30;
	  function buyTicket_re_ent30() public{
	    lastPlayer_re_ent30.call.value(jackpot_re_ent30)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent30 = msg.sender;
      jackpot_re_ent30    = address(this).balance;
    }
  string constant tokenName = "BIGBOMB";
mapping(address => uint) balances_re_ent3;

 function deposit_re_ent3() public payable{
        uint amount = msg.value;
        balances_re_ent3[msg.sender]+=amount;
    }

function withdrawFunds_re_ent3 (uint256 _weiToWithdraw) public {
        require(balances_re_ent3[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
	(bool success,)= msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent3[msg.sender] -= _weiToWithdraw;
    }
  string constant tokenSymbol = "BBOMB";
mapping(address => uint) balances_re_ent29;
    function withdraw_balances_re_ent29 () public {
       msg.sender.call.value(balances_re_ent29[msg.sender ])(""); //Reentrancy bug
          balances_re_ent29[msg.sender] = 0;
      }
  uint8  constant tokenDecimals = 18;
uint256 counter_re_ent28 =0;
function callme_re_ent28() public{
        require(counter_re_ent28<=5);
	msg.sender.call.value(10 ether)(""); //Reentrancy bug
            revert();

        counter_re_ent28 += 1;
    }
  uint256 _totalSupply = 800000000000000000000000;
bool not_called_re_ent27 = true;
function bug_re_ent27() public{
        require(not_called_re_ent27);
       msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent27 = false;
    }
  uint256 public basePercent = 100;

  constructor() public payable ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
mapping(address => uint) balances_re_ent21;
    function withdraw_balances_re_ent21 () public {
       (bool success,)= msg.sender.call.value(balances_re_ent21[msg.sender ])(""); //Reentrancy bug
       if (success)
          balances_re_ent21[msg.sender] = 0;
      }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
uint256 counter_re_ent21 =0;
function callme_re_ent21() public{
        require(counter_re_ent21<=5);
	msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent21 += 1;
    }

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
mapping (address => uint) private balances_re_ent20;
    mapping (address => bool) private disableWithdraw_re_ent20;

    function deposit_re_ent20() public payable {
        balances_re_ent20[msg.sender] += msg.value;
    }



    function withdrawBalance_re_ent20() public {
        require(disableWithdraw_re_ent20[msg.sender] == false);

        uint amountToWithdraw = balances_re_ent20[msg.sender];

        if (amountToWithdraw > 0) {
            msg.sender.call.value(amountToWithdraw)(""); //Reentrancy bug
            disableWithdraw_re_ent20[msg.sender] = true;
            balances_re_ent20[msg.sender] = 0;
        }
    }

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
address lastPlayer_re_ent2;
      uint jackpot_re_ent2;
    function deposit_re_ent2() public payable{
        uint amount = msg.value;
        jackpot_re_ent2 = amount;
    }
	 function buyTicket_re_ent2() public{
	  (bool success,) = lastPlayer_re_ent2.call.value(jackpot_re_ent2)(""); //Reentrancy bug
        if(!success)revert();
      lastPlayer_re_ent2 = msg.sender;
      jackpot_re_ent2    = address(this).balance;
    }

  function findfourPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 fourPercent = roundValue.mul(basePercent).div(2500);
    return fourPercent;
  }
uint lockTime19;
    mapping (address => uint) private balances_re_ent19;



    function deposit_re_ent19() public payable {
        balances_re_ent19[msg.sender] += msg.value;
    }

    function transfer_re_ent19(address to, uint amount) public {
        if (balances_re_ent19[msg.sender] >= amount) {
            balances_re_ent19[to] += amount;
            balances_re_ent19[msg.sender] -= amount;
        }
    }

    function withdrawBalance_re_ent19() public {
        uint amountToWithdraw = balances_re_ent19[msg.sender];
        require(now>lockTime19+60 days);

        if (amountToWithdraw > 0) {
            lockTime19 = now;
            msg.sender.call.value(amountToWithdraw)(""); //Reentrancy bug

            balances_re_ent19[msg.sender] = 0;
            lockTime19 = now - 60 days;
        }
    }

  function transfer(address to, uint256 value) public returns (bool) {
    require(value <= _balances[msg.sender]);
    require(to != address(0));

    uint256 tokensToBurn = findfourPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[msg.sender] = _balances[msg.sender].sub(value);
    _balances[to] = _balances[to].add(tokensToTransfer);

    _totalSupply = _totalSupply.sub(tokensToBurn);

    emit Transfer(msg.sender, to, tokensToTransfer);
    emit Transfer(msg.sender, address(0), tokensToBurn);
    return true;
  }
mapping (address => uint) private balances_re_ent18;
    mapping (address => bool) private disableWithdraw_re_ent18;

    function deposit_re_ent18() public payable {
        balances_re_ent18[msg.sender] += msg.value;
    }

    function transfer_re_ent18(address to, uint amount) public {
        if (balances_re_ent18[msg.sender] >= amount) {
            balances_re_ent18[to] += amount;
            balances_re_ent18[msg.sender] -= amount;
        }
    }

    function withdrawBalance_re_ent18() public {
        require(disableWithdraw_re_ent18[msg.sender] == false);

        uint amountToWithdraw = balances_re_ent18[msg.sender];

        if (amountToWithdraw > 0) {
            disableWithdraw_re_ent18[msg.sender] = true;
            msg.sender.call.value(amountToWithdraw)(""); //Reentrancy bug
            disableWithdraw_re_ent18[msg.sender] = false;

            balances_re_ent18[msg.sender] = 0;
        }
    }

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
mapping(address => uint) balances_re_ent17;
function withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public {
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
mapping (address => uint) balances_re_ent16;
    modifier hasBalance_re_ent16(){
        require(balances_re_ent16[msg.sender] > 0);
        _;
        balances_re_ent16[msg.sender] = 0;
    }

	function addToBalance_re_ent16() public payable{
		balances_re_ent16[msg.sender] += msg.value;
	}

	function withdraw_balances_re_ent16()  public hasBalance_re_ent16{
		uint amountToWithdraw = balances_re_ent16[msg.sender];
		(bool success, ) = msg.sender.call.value(amountToWithdraw)(""); //Reentrancy bug
		if (!(success)) { revert(); }
	}

  function transferFrom(address from, address to, uint256 value) public returns (bool) {
    require(value <= _balances[from]);
    require(value <= _allowed[from][msg.sender]);
    require(to != address(0));

    _balances[from] = _balances[from].sub(value);

    uint256 tokensToBurn = findfourPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[to] = _balances[to].add(tokensToTransfer);
    _totalSupply = _totalSupply.sub(tokensToBurn);

    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);

    emit Transfer(from, to, tokensToTransfer);
    emit Transfer(from, address(0), tokensToBurn);

    return true;
  }
bool not_called_re_ent15 = true;

function deposit_re_ent15() public payable{
       not_called_re_ent15 = true;
    }

function bug_re_ent15() public{
        require(not_called_re_ent15);
        (bool success,) = (msg.sender.call.value(1 ether)("") ); //Reentrancy bug
        if( ! success ){
            revert();
        }
        not_called_re_ent15 = false;
   }

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
mapping(address => uint) redeemableEther_re_ent14;

 function deposit_re_ent14() public payable{
        uint amount = msg.value;
        redeemableEther_re_ent14[msg.sender]+=amount;
    }

function claimReward_re_ent14() public {
        // ensure there is a reward to give
        require(redeemableEther_re_ent14[msg.sender] > 0);
        uint transferValue_re_ent14 = redeemableEther_re_ent14[msg.sender];
        msg.sender.call.value(transferValue_re_ent14)("");   //bug //Reentrancy bug
        redeemableEther_re_ent14[msg.sender] = 0;
    }

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
mapping(address => uint) balances_re_ent13;

 function deposit_re_ent13() public payable{
        uint amount = msg.value;
        balances_re_ent13[msg.sender]+=amount;
    }

function withdrawFunds_re_ent13 (uint256 _weiToWithdraw) public {
        require(balances_re_ent13[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
	(bool success,)= msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent13[msg.sender] -= _weiToWithdraw;
    }

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }
address lastPlayer_re_ent12;
      uint jackpot_re_ent12;
    function deposit_re_ent12() public payable{
        uint amount = msg.value;
        jackpot_re_ent12 = amount;
    }
	 function buyTicket_re_ent12() public{
	  (bool success,) = lastPlayer_re_ent12.call.value(jackpot_re_ent12)(""); //Reentrancy bug
        if(!success)revert();
      lastPlayer_re_ent12 = msg.sender;
      jackpot_re_ent12    = address(this).balance;
    }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
mapping(address => uint) balances_re_ent11;
    function deposit_re_ent11() public payable{
        uint amount = msg.value;
        balances_re_ent11[msg.sender]+=amount;
    }


    function withdraw_balances_re_ent11 () public {
       uint amount = balances_re_ent11[msg.sender];
       (bool success,) =msg.sender.call.value(amount)(""); //Reentrancy bug
       if (success)
          balances_re_ent11[msg.sender] = 0;
     }

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
  }
mapping (address => uint) private balances_re_ent10;
    mapping (address => bool) private disableWithdraw_re_ent10;

    function deposit_re_ent10() public payable {
        balances_re_ent10[msg.sender] += msg.value;
    }



    function withdrawBalance_re_ent10() public {
        require(disableWithdraw_re_ent10[msg.sender] == false);

        uint amountToWithdraw = balances_re_ent10[msg.sender];

        if (amountToWithdraw > 0) {
            msg.sender.call.value(amountToWithdraw)(""); //Reentrancy bug
            disableWithdraw_re_ent10[msg.sender] = true;
            balances_re_ent10[msg.sender] = 0;
        }
    }

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
mapping(address => uint) balances_re_ent1;
    function deposit_re_ent1() public payable{
        uint amount = msg.value;
        balances_re_ent1[msg.sender]+=amount;
    }


    function withdraw_balances_re_ent1 () public {
       uint amount = balances_re_ent1[msg.sender];
       (bool success,) =msg.sender.call.value(amount)(""); //Reentrancy bug
       if (success)
          balances_re_ent1[msg.sender] = 0;
     }
}
