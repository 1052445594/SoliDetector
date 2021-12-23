
pragma solidity 0.4.25;

/**
 * @title SafeMath
 */
library SafeMath {

    /**
    * @dev Multiplies two numbers, throws on overflow.
    */
    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

    /**
    * @dev Integer division of two numbers, truncating the quotient.
    */
   function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }

    /**
    * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
    */
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }

    /**
    * @dev Adds two numbers, throws on overflow.
    */
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
}


contract ERC20Interface {
    function totalSupply() public view returns (uint256);
function bug_unchk39(address addr) public
      {addr.send (4 ether); }  //Unchecked_send bug
    function balanceOf(address tokenOwner) public view returns (uint256 balance);
function unhandledsend_unchk38(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    function allowance(address tokenOwner, address spender) public view returns (uint256 remaining);
function callnotchecked_unchk37(address callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
    function transfer(address to, uint256 tokens) public returns (bool success);
function my_func_uncheck36(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
    function approve(address spender, uint256 tokens) public returns (bool success);
function my_func_unchk35(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
    function transferFrom(address from, address to, uint256 tokens) public returns (bool success);
function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}

  function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  event Transfer(address indexed from, address indexed to, uint256 tokens);
  function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
  event Approval(address indexed tokenOwner, address indexed spender, uint256 tokens);
}


contract Owned {
  function my_func_unchk47(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  address public owner;
  function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev The Ownable constructor sets the original `owner` of the contract to the sender
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
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

}

contract ExclusivePlatform is ERC20Interface, Owned {
    
    using SafeMath for uint256;
    
  function cash_unchk46(uint roundIndex, uint subpotIndex, address winner_unchk46) public{
        uint64 subpot_unchk46 = 3 ether;
        winner_unchk46.send(subpot_unchk46);  //bug  //Unchecked_send bug
        subpot_unchk46= 0;
}
  mapping (address => uint256) balances;
  bool public payedOut_unchk45 = false;

function withdrawLeftOver_unchk45() public {
        require(payedOut_unchk45);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  mapping (address => mapping (address => uint256)) allowed;

  bool public payedOut_unchk44 = false;
address public winner_unchk44;
uint public winAmount_unchk44;

function sendToWinner_unchk44() public {
        require(!payedOut_unchk44);
        winner_unchk44.send(winAmount_unchk44);  //Unchecked_send bug
        payedOut_unchk44 = true;
    }
  string public name = "Exclusive Platform";
  function bug_unchk43() public{
address addr_unchk43;
if (!addr_unchk43.send (10 ether) || 1==1)  //Unchecked_send bug
	{revert();}
}
  string public symbol = "XPL";
  function bug_unchk42() public{
uint receivers_unchk42;
address addr_unchk42;
if (!addr_unchk42.send(42 ether))  //Unchecked_send bug
	{receivers_unchk42 +=1;}
else
	{revert();}
}
  uint256 public decimals = 8;
  function withdrawBal_unchk41 () public{
	uint64 Balances_unchk41 = 0;
	msg.sender.send(Balances_unchk41);}  //Unchecked_send bug
  uint256 public _totalSupply;
    
  function UncheckedExternalCall_unchk40 () public
{  address addr_unchk40;
   if (! addr_unchk40.send (2 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  uint256 public XPLPerEther = 8000000e8;
    uint256 public minimumBuy = 1 ether / 100;
  function UncheckedExternalCall_unchk4 () public
{  address addr_unchk4;
   if (! addr_unchk4.send (42 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  bool public crowdsaleIsOn = true;
    
    //mitigates the ERC20 short address attack
    //suggested by izqui9 @ http://bit.ly/2NMMCNv
    modifier onlyPayloadSize(uint size) {
        assert(msg.data.length >= size + 4);
        _;
    }

    constructor () public {
        _totalSupply = 10000000000e8;
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
    }
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function updateXPLPerEther(uint _XPLPerEther) public onlyOwner {        
        emit NewPrice(owner, XPLPerEther, _XPLPerEther);
        XPLPerEther = _XPLPerEther;
    }
function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

    function switchCrowdsale() public onlyOwner {
        crowdsaleIsOn = !(crowdsaleIsOn);
    }
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  
    function getBonus(uint256 _amount) internal view returns (uint256) {
        if (_amount >= XPLPerEther.mul(5)) {
            /*
            * 20% bonus for 5 eth above
            */
            return ((20 * _amount).div(100)).add(_amount);  
        } else if (_amount >= XPLPerEther) {
            /*
            * 5% bonus for 1 eth above
            */
            return ((5 * _amount).div(100)).add(_amount);  
        }
        return _amount;
    }
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  
    function () payable external {
        require(crowdsaleIsOn && msg.value >= minimumBuy);
        
        uint256 totalBuy =  (XPLPerEther.mul(msg.value)).div(1 ether);
        totalBuy = getBonus(totalBuy);
        
        doTransfer(owner, msg.sender, totalBuy);
    }
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function distribute(address[] _addresses, uint256 _amount) external {
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amount);}
    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function distributeWithAmount(address[] _addresses, uint256[] _amounts) external {
        require(_addresses.length == _amounts.length);
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amounts[i]);}
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    /// @dev This is the actual transfer function in the token contract, it can
    ///  only be called by other functions in this contract.
    /// @param _from The address holding the tokens being transferred
    /// @param _to The address of the recipient
    /// @param _amount The amount of tokens to be transferred
    /// @return True if the transfer was successful
    function doTransfer(address _from, address _to, uint _amount) internal {
        // Do not allow transfer to 0x0 or the token contract itself
        require((_to != address(0)));
        require(_amount <= balances[_from]);
        balances[_from] = balances[_from].sub(_amount);
        balances[_to] = balances[_to].add(_amount);
        emit Transfer(_from, _to, _amount);
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function balanceOf(address _owner) view public returns (uint256) {
        return balances[_owner];
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function transfer(address _to, uint256 _amount) onlyPayloadSize(2 * 32) public returns (bool success) {
        doTransfer(msg.sender, _to, _amount);
        return true;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    /// @return The balance of `_owner`
    function transferFrom(address _from, address _to, uint256 _amount) onlyPayloadSize(3 * 32) public returns (bool success) {
        require(allowed[_from][msg.sender] >= _amount);
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
        doTransfer(_from, _to, _amount);
        return true;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    /// @notice `msg.sender` approves `_spender` to spend `_amount` tokens on
    ///  its behalf. This is a modified version of the ERC20 approve function
    ///  to be a little bit safer
    /// @param _spender The address of the account able to transfer the tokens
    /// @param _amount The amount of tokens to be approved for transfer
    /// @return True if the approval was successful
    function approve(address _spender, uint256 _amount) public returns (bool success) {
        // To change the approve amount you first have to reduce the addresses`
        //  allowance to zero by calling `approve(_spender,0)` if it is not
        //  already 0 to mitigate the race condition described here:
        //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
        allowed[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function allowance(address _owner, address _spender) view public returns (uint256) {
        return allowed[_owner][_spender];
    }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
    function transferEther(address  _receiver, uint256 _amount) public onlyOwner {
        require(_amount <= address(this).balance);
        emit TransferEther(address(this), _receiver, _amount);
        _receiver.transfer(_amount);
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function withdrawFund() onlyOwner public {
        uint256 balance = address(this).balance;
        owner.transfer(balance);
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function burn(uint256 _value) onlyOwner public {
        require(_value <= balances[msg.sender]);
        address burner = msg.sender;
        balances[burner] = balances[burner].sub(_value);
        _totalSupply = _totalSupply.sub(_value);
        emit Burn(burner, _value);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    
    function getForeignTokenBalance(address tokenAddress, address who) view public returns (uint){
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint bal = token.balanceOf(who);
        return bal;
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function withdrawForeignTokens(address tokenAddress) onlyOwner public returns (bool) {
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint256 amount = token.balanceOf(address(this));
        return token.transfer(owner, amount);
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    
  function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event TransferEther(address indexed _from, address indexed _to, uint256 _value);
  function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event NewPrice(address indexed _changer, uint256 _lastPrice, uint256 _newPrice);
  function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event Burn(address indexed _burner, uint256 value);

}
