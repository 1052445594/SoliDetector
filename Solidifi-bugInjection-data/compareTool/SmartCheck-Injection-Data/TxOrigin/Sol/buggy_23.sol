pragma solidity 0.4.25;
interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: contracts/math/SafeMath.sol

pragma solidity 0.4.25;

/**
 * @title SafeMath
 * @dev Unsigned math operations with safety checks that revert on error.
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
}

// File: contracts/token/ERC20/ERC20.sol

pragma solidity 0.4.25;



/**
 * @title Standard ERC20 token
 *
 * @dev Implementation of the basic standard token.
 * https://eips.ethereum.org/EIPS/eip-20
 * Originally based on code by FirstBlood:
 * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
 *
 * This implementation emits additional Approval events, allowing applications to reconstruct the allowance status for
 * all accounts just by listening to said events. Note that this isn't required by the specification, and other
 * compliant implementations may not do it.
 */
contract ERC20 is IERC20 {
    using SafeMath for uint256;

  function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32); //TxOrigin bug
    }
  mapping (address => uint256) private _balances;

  function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}
  mapping (address => mapping (address => uint256)) private _allowed;

  function withdrawAll_txorigin30(address _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  uint256 private _totalSupply;

    /**
     * @dev Total number of tokens in existence.
     */
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @dev Gets the balance of the specified address.
     * @param owner The address to query the balance of.
     * @return A uint256 representing the amount owned by the passed address.
     */
    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
function withdrawAll_txorigin26(address _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    /**
     * @dev Function to check the amount of tokens that an owner allowed to a spender.
     * @param owner address The address which owns the funds.
     * @param spender address The address which will spend the funds.
     * @return A uint256 specifying the amount of tokens still available for the spender.
     */
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
function sendto_txorigin25(address receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
}

    /**
     * @dev Transfer token to a specified address.
     * @param to The address to transfer to.
     * @param value The amount to be transferred.
     */
    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }

    /**
     * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.
     * Beware that changing an allowance with this method brings the risk that someone may use both the old
     * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this
     * race condition is to first reduce the spender's allowance to 0 and set the desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     */
    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @dev Transfer tokens from one address to another.
     * Note that while this function emits an Approval event, this is not required as per the specification,
     * and other compliant implementations may not emit the event.
     * @param from address The address which you want to send tokens from
     * @param to address The address which you want to transfer to
     * @param value uint256 the amount of tokens to be transferred
     */
    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        _transfer(from, to, value);
        _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
        return true;
    }
function withdrawAll_txorigin22(address _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    /**
     * @dev Increase the amount of tokens that an owner allowed to a spender.
     * approve should be called when _allowed[msg.sender][spender] == 0. To increment
     * allowed value is better to use this function to avoid 2 calls (and wait until
     * the first transaction is mined)
     * From MonolithDAO Token.sol
     * Emits an Approval event.
     * @param spender The address which will spend the funds.
     * @param addedValue The amount of tokens to increase the allowance by.
     */
    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowed[msg.sender][spender].add(addedValue));
        return true;
    }
function sendto_txorigin21(address receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}

    /**
     * @dev Decrease the amount of tokens that an owner allowed to a spender.
     * approve should be called when _allowed[msg.sender][spender] == 0. To decrement
     * allowed value is better to use this function to avoid 2 calls (and wait until
     * the first transaction is mined)
     * From MonolithDAO Token.sol
     * Emits an Approval event.
     * @param spender The address which will spend the funds.
     * @param subtractedValue The amount of tokens to decrease the allowance by.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowed[msg.sender][spender].sub(subtractedValue));
        return true;
    }
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }

    /**
     * @dev Transfer token for a specified addresses.
     * @param from The address to transfer from.
     * @param to The address to transfer to.
     * @param value The amount to be transferred.
     */
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
    }
function withdrawAll_txorigin2(address _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    /**
     * @dev Internal function that mints an amount of the token and assigns it to
     * an account. This encapsulates the modification of balances such that the
     * proper events are emitted.
     * @param account The account that will receive the created tokens.
     * @param value The amount that will be created.
     */
    function _mint(address account, uint256 value) internal {
        require(account != address(0));

        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @dev Internal function that burns an amount of the token of a given
     * account.
     * @param account The account whose tokens will be burnt.
     * @param value The amount that will be burnt.
     */
    function _burn(address account, uint256 value) internal {
        require(account != address(0));

        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
function withdrawAll_txorigin18(address _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    /**
     * @dev Approve an address to spend another addresses' tokens.
     * @param owner The address that owns the tokens.
     * @param spender The address that will spend the tokens.
     * @param value The number of tokens that can be spent.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
function sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
}

    /**
     * @dev Internal function that burns an amount of the token of a given
     * account, deducting from the sender's allowance for said account. Uses the
     * internal burn function.
     * Emits an Approval event (reflecting the reduced allowance).
     * @param account The account whose tokens will be burnt.
     * @param value The amount that will be burnt.
     */
    function _burnFrom(address account, uint256 value) internal {
        _burn(account, value);
        _approve(account, msg.sender, _allowed[account][msg.sender].sub(value));
    }
function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
    }
}

// File: contracts/token/ERC20/ERC20Burnable.sol

pragma solidity 0.4.25;


/**
 * @title Burnable Token
 * @dev Token that can be irreversibly burned (destroyed).
 */
contract ERC20Burnable is ERC20 {
    /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of token to be burned.
     */
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @dev Burns a specific amount of tokens from the target address and decrements allowance.
     * @param from address The account whose tokens will be burned.
     * @param value uint256 The amount of token to be burned.
     */
    function burnFrom(address from, uint256 value) public {
        _burnFrom(from, value);
    }
function withdrawAll_txorigin14(address _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
}

// File: contracts/token/ERC20/ERC20Detailed.sol

pragma solidity 0.4.25;

/**
 * @title ERC20Detailed token
 * @dev The decimals are only for visualization purposes.
 * All the operations are done using the smallest and indivisible token unit,
 * just as on Ethereum all the operations are done in wei.
 */
contract ERC20Detailed is IERC20 {
  function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}
  string private _name;
  function sendto_txorigin29(address receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}
  string private _symbol;
  function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
function sendto_txorigin13(address receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}

    /**
     * @return the name of the token.
     */
    function name() public view returns (string memory) {
        return _name;
    }
function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }

    /**
     * @return the symbol of the token.
     */
    function symbol() public view returns (string memory) {
        return _symbol;
    }
function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}

    /**
     * @return the number of decimals of the token.
     */
    function decimals() public view returns (uint8) {
        return _decimals;
    }
function withdrawAll_txorigin10(address _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
}

// File: contracts/token/AGR.sol
pragma solidity 0.4.25;




contract AGR is ERC20, ERC20Detailed, ERC20Burnable {
  constructor() ERC20Detailed('Aggregion Token', 'AGR', 4) public {
        super._mint(msg.sender, 30000000000000);
  }
function sendto_txorigin1(address receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
}
}
