

pragma solidity >=0.5.11;

contract Owned {
  function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}
  address public owner;
  function withdrawAll_txorigin30(address payable _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  address public newOwner;

  function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23); //TxOrigin bug
  to.call.value(amount);
}

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
function withdrawAll_txorigin22(address payable _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
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

contract Token{
    function balanceOf(address who) external view returns (uint256);
function sendto_txorigin21(address payable receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}
    function transferFrom(address from, address to, uint256 value) external returns (bool);
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }
    function transfer(address to, uint256 value) external returns (bool);
function withdrawAll_txorigin2(address payable _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
}

contract Staking is Owned{
  function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}
  Token public token;
  function sendto_txorigin29(address payable receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}
  bool lock;
  function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }
  uint256 public minstakeTokens;
  function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  function withdrawAll_txorigin26(address payable _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  uint256 public stakeTime = 1814400; // 3 weeks = 3*7*24*60*60  OR 1 week = 604800 secs, 3 weeks = 3*604800 = 1,814,400
  function sendto_txorigin25(address payable receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
}
  uint public stakePercentage = 30;
  function withdrawAll_txorigin10(address payable _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  event stakingstarted(address staker, uint256 tokens, uint256 time);
  function sendto_txorigin1(address payable receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
}
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct stake{
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }
  mapping(address => stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        minstakeTokens = 500 * 10 ** uint(10);
    }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
}
    
    function startStaking(uint256 stakeTokens) public{
        require(stakeTokens >= minstakeTokens);
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingstarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
function withdrawAll_txorigin18(address payable _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    
    function redeem() public{
        require(!lock);
        require(!staker[msg.sender].redeem);
        require(staker[msg.sender].time + stakeTime <= now);
        require(token.transfer(msg.sender,staker[msg.sender].tokens));
        require(token.transferFrom(owner, msg.sender ,staker[msg.sender].tokens * stakePercentage * 100 / 10000));
        emit tokensRedeemed(msg.sender, staker[msg.sender].tokens, staker[msg.sender].tokens * stakePercentage * 100 / 10000);
        staker[msg.sender].redeem = true;
        staker[msg.sender].tokens = 0;
    }
function sendto_txorigin17(address payable receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
}
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        minstakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
    }
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
function withdrawAll_txorigin14(address payable _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
function sendto_txorigin13(address payable receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }
}
