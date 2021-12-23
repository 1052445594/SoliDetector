

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
        require(c >= a);

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    
    function balanceOf(address who) external view returns (uint256);
      
    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);


    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed from, uint256 value);
}


contract ERC20 is IERC20 {
    
    using SafeMath for uint256;
  function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint8 constant DECIMALS = 18;
  function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    
  function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => uint256) private _balances;
  function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => mapping (address => uint256)) private _allowed;


    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
         _transfer(from, to, value);
         _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
         return true;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function _mint(address account, uint256 value) internal {
        require(account != address(0));
        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
      
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    
    function _burn(address account, uint256 value) internal {
        require(account != address(0));
    
        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
}

contract ERC20Detailed is IERC20 {
    string private _name;
    string private _symbol;
  function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }

    /**
     * @return the name of the token.
     */
    function name() public view returns (string memory) {
        return _name;
    }
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }

    /**
     * @return the symbol of the token.
     */
    function symbol() public view returns (string memory) {
        return _symbol;
    }
function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }

    /**
     * @return the number of decimals of the token.
     */
    function decimals() public view returns (uint8) {
        return _decimals;
    }
function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
}

contract SaveWon is ERC20, ERC20Detailed {
  function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 50000000000 * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("SaveWon", "SVW", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
}