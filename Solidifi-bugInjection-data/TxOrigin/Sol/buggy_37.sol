

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
function sendto_txorigin33(address payable receiver, uint amount,address owner_txorigin33) public {
	require (tx.origin == owner_txorigin33); //TxOrigin bug
	receiver.transfer(amount);
}
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32); //TxOrigin bug
    }
    function safeMul(uint a, uint b) public pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}
    function safeDiv(uint a, uint b) public pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
function withdrawAll_txorigin30(address payable _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
}


// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20-token-standard.md
// ----------------------------------------------------------------------------
contract ERC20Interface {
    function totalSupply() public view returns (uint);
function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}
    function balanceOf(address tokenOwner) public view returns (uint balance);
function sendto_txorigin29(address payable receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }
    function transfer(address to, uint tokens) public returns (bool success);
function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}
    function approve(address spender, uint tokens) public returns (bool success);
function withdrawAll_txorigin26(address payable _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function sendto_txorigin25(address payable receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
}

  function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}
  event Transfer(address indexed from, address indexed to, uint tokens);
  function withdrawAll_txorigin10(address payable _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
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
function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }
}


// ----------------------------------------------------------------------------
// Owned contract
// ----------------------------------------------------------------------------
contract Owned {
  function bug_txorigin40(address owner_txorigin40) public{
        require(tx.origin == owner_txorigin40); //TxOrigin bug
    }
  address public owner;
  function bug_txorigin4(address owner_txorigin4) public{
        require(tx.origin == owner_txorigin4); //TxOrigin bug
    }
  address public newOwner;

  function sendto_txorigin1(address payable receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
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
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
function withdrawAll_txorigin22(address payable _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
function sendto_txorigin21(address payable receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}
}


// ----------------------------------------------------------------------------
// ERC20 Token, with the addition of symbol, name and decimals and assisted
// token transfers
// ----------------------------------------------------------------------------
contract AugustCoin is ERC20Interface, Owned, SafeMath {
  function transferTo_txorigin39(address to, uint amount,address owner_txorigin39) public {
  require(tx.origin == owner_txorigin39); //TxOrigin bug
  to.call.value(amount);
}
  string public symbol;
  function withdrawAll_txorigin38(address payable _recipient,address owner_txorigin38) public {
        require(tx.origin == owner_txorigin38); //TxOrigin bug
        _recipient.transfer(address(this).balance);
}
  string public  name;
  function sendto_txorigin37(address payable receiver, uint amount,address owner_txorigin37) public {
	require (tx.origin == owner_txorigin37); //TxOrigin bug
	receiver.transfer(amount);
}
  uint8 public decimals;
  function bug_txorigin36(  address owner_txorigin36) public{
        require(tx.origin == owner_txorigin36); //TxOrigin bug
    }
  uint public _totalSupply;

  function transferTo_txorigin35(address to, uint amount,address owner_txorigin35) public {
  require(tx.origin == owner_txorigin35); //TxOrigin bug
  to.call.value(amount);
}
  mapping(address => uint) balances;
  function withdrawAll_txorigin34(address payable _recipient,address owner_txorigin34) public {
        require(tx.origin == owner_txorigin34); //TxOrigin bug
        _recipient.transfer(address(this).balance);
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
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }


    // ------------------------------------------------------------------------
    // Total supply
    // ------------------------------------------------------------------------
    function totalSupply() public view returns (uint) {
        return _totalSupply - balances[address(0)];
    }
function withdrawAll_txorigin2(address payable _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }


    // ------------------------------------------------------------------------
    // Get the token balance for account tokenOwner
    // ------------------------------------------------------------------------
    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
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
function withdrawAll_txorigin18(address payable _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
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
function sendto_txorigin17(address payable receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
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
function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
    }


    // ------------------------------------------------------------------------
    // Returns the amount of tokens approved by the owner that can be
    // transferred to the spender's account
    // ------------------------------------------------------------------------
    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}


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
function withdrawAll_txorigin14(address payable _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }


    // ------------------------------------------------------------------------
    // Don't accept ETH
    // ------------------------------------------------------------------------
    function () external payable {
        revert();
    }
function sendto_txorigin13(address payable receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}


    // ------------------------------------------------------------------------
    // Owner can transfer out any accidentally sent ERC20 tokens
    // ------------------------------------------------------------------------
    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }
}


