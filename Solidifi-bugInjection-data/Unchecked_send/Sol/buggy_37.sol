

pragma solidity ^0.5.00;

// ----------------------------------------------------------------------------
// 'August Coin' token contract
//
// Deployed to : 0xe4948b8A5609c3c39E49eC1e36679a94F72D62bD
// Symbol      : AUC
// Name        : AugustCoin
// Total supply: 100000000
// Decimals    : 18
//
// Enjoy.
//
// (c) by Ahiwe Onyebuchi Valentine.
// ----------------------------------------------------------------------------


// ----------------------------------------------------------------------------
// Safe maths
// ----------------------------------------------------------------------------
contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function safeMul(uint a, uint b) public pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function safeDiv(uint a, uint b) public pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}


// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
// ----------------------------------------------------------------------------
contract ERC20Interface {
    function totalSupply() public view returns (uint);
function bug_unchk3(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    function balanceOf(address tokenOwner) public view returns (uint balance);
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function transfer(address to, uint tokens) public returns (bool success);
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function approve(address spender, uint tokens) public returns (bool success);
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

  function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event Transfer(address indexed from, address indexed to, uint tokens);
  function cash_unchk10(uint roundIndex, uint subpotIndex,address payable winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


// ----------------------------------------------------------------------------
// Contract function to receive approval and execute function in one call
//
// Borrowed from MiniMeToken
// ----------------------------------------------------------------------------
contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}


// ----------------------------------------------------------------------------
// Owned contract
// ----------------------------------------------------------------------------
contract Owned {
  function UncheckedExternalCall_unchk40 () public
{  address payable addr_unchk40;
   if (! addr_unchk40.send (2 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  address public owner;
  function UncheckedExternalCall_unchk4 () public
{  address payable addr_unchk4;
   if (! addr_unchk4.send (42 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  address public newOwner;

  function callnotchecked_unchk1(address payable callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}


// ----------------------------------------------------------------------------
// ERC20 Token, with the addition of symbol, name and decimals and assisted
// token transfers
// ----------------------------------------------------------------------------
contract AugustCoin is ERC20Interface, Owned, SafeMath {
  function bug_unchk39(address payable addr) public
      {addr.send (4 ether); }  //Unchecked_send bug
  string public symbol;
  function unhandledsend_unchk38(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  string public  name;
  function callnotchecked_unchk37(address payable callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
  uint8 public decimals;
  function my_func_uncheck36(address payable dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  uint public _totalSupply;

  function my_func_unchk35(address payable dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  mapping(address => uint) balances;
  function cash_unchk34(uint roundIndex, uint subpotIndex, address payable winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  mapping(address => mapping(address => uint)) allowed;


    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
    constructor() public {
        symbol = "AUC";
        name = "AugustCoin";
        decimals = 18;
        _totalSupply = 100000000000000000000000000;
        balances[0xe4948b8A5609c3c39E49eC1e36679a94F72D62bD] = _totalSupply;
        emit Transfer(address(0), 0xe4948b8A5609c3c39E49eC1e36679a94F72D62bD, _totalSupply);
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


    // ------------------------------------------------------------------------
    // Total supply
    // ------------------------------------------------------------------------
    function totalSupply() public view returns (uint) {
        return _totalSupply - balances[address(0)];
    }
function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }


    // ------------------------------------------------------------------------
    // Get the token balance for account tokenOwner
    // ------------------------------------------------------------------------
    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


    // ------------------------------------------------------------------------
    // Transfer the balance from token owner's account to to account
    // - Owner's account must have sufficient balance to transfer
    // - 0 value transfers are allowed
    // ------------------------------------------------------------------------
    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


    // ------------------------------------------------------------------------
    // Token owner can approve for spender to transferFrom(...) tokens
    // from the token owner's account
    //
    // https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
    // recommends that there are no checks for the approval double-spend attack
    // as this should be implemented in user interfaces 
    // ------------------------------------------------------------------------
    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


    // ------------------------------------------------------------------------
    // Transfer tokens from the from account to the to account
    // 
    // The calling account must already have sufficient tokens approve(...)-d
    // for spending from the from account and
    // - From account must have sufficient balance to transfer
    // - Spender must have sufficient allowance to transfer
    // - 0 value transfers are allowed
    // ------------------------------------------------------------------------
    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = safeSub(balances[from], tokens);
        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }


    // ------------------------------------------------------------------------
    // Returns the amount of tokens approved by the owner that can be
    // transferred to the spender's account
    // ------------------------------------------------------------------------
    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
function bug_unchk15(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug


    // ------------------------------------------------------------------------
    // Token owner can approve for spender to transferFrom(...) tokens
    // from the token owner's account. The spender contract function
    // receiveApproval(...) is then executed
    // ------------------------------------------------------------------------
    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }


    // ------------------------------------------------------------------------
    // Don't accept ETH
    // ------------------------------------------------------------------------
    function () external payable {
        revert();
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }


    // ------------------------------------------------------------------------
    // Owner can transfer out any accidentally sent ERC20 tokens
    // ------------------------------------------------------------------------
    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
function my_func_uncheck12(address payable dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
}


