

pragma solidity >=0.4.22 <0.6.0;

contract Ownable {
function callnotchecked_unchk37(address callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
  address public owner;

function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor () public {
    owner = msg.sender;
  }
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
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
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

}

contract TokenERC20 {
    // Public variables of the token
  function my_func_uncheck36(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  string public name;
  function my_func_unchk35(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  string public symbol;
  function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  uint8 public decimals = 18;
    // 18 decimals is the strongly suggested default, avoid changing it
  bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  uint256 public totalSupply;

    // This creates an array with all balances
  function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => uint256) public balanceOf;
  function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => mapping (address => uint256)) public allowance;

    // This generates a public event on the blockchain that will notify clients
  function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
  event Transfer(address indexed from, address indexed to, uint256 value);
    
    // This generates a public event on the blockchain that will notify clients
  function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    // This notifies clients about the amount burnt
  function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Burn(address indexed from, uint256 value);

    /**
     * Constrctor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  // Update total supply with the decimal amount
        balanceOf[msg.sender] = totalSupply;                    // Give the creator all initial tokens
        name = tokenName;                                       // Set the name for display purposes
        symbol = tokenSymbol;                                   // Set the symbol for display purposes
    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Internal transfer, only can be called by this contract
     */
    function _transfer(address _from, address _to, uint _value) internal {
        // Prevent transfer to 0x0 address. Use burn() instead
        require(_to != address(0x0));
        // Check if the sender has enough
        require(balanceOf[_from] >= _value);
        // Check for overflows
        require(balanceOf[_to] + _value > balanceOf[_to]);
        // Save this for an assertion in the future
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        // Subtract from the sender
        balanceOf[_from] -= _value;
        // Add the same to the recipient
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
        // Asserts are used to use static analysis to find bugs in your code. They should never fail
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Transfer tokens
     *
     * Send `_value` tokens to `_to` from your account
     *
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Transfer tokens from other address
     *
     * Send `_value` tokens to `_to` in behalf of `_from`
     *
     * @param _from The address of the sender
     * @param _to The address of the recipient
     * @param _value the amount to send
     */
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     // Check allowance
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Set allowance for other address
     *
     * Allows `_spender` to spend no more than `_value` tokens in your behalf
     *
     * @param _spender The address authorized to spend
     * @param _value the max amount they can spend
     */
    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Set allowance for other address and notify
     

    /**
     * Destroy tokens
     *
     * Remove `_value` tokens from the system irreversibly
     *
     * @param _value the amount of money to burn
     */
    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
        balanceOf[msg.sender] -= _value;            // Subtract from the sender
        totalSupply -= _value;                      // Updates totalSupply
        emit Burn(msg.sender, _value);
        return true;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /**
     * Destroy tokens from other account
     *
     * Remove `_value` tokens from the system irreversibly on behalf of `_from`.
     *
     * @param _from the address of the sender
     * @param _value the amount of money to burn
     */
    function burnFrom(address _from, uint256 _value) public returns (bool success) {
        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
        require(_value <= allowance[_from][msg.sender]);    // Check allowance
        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
        totalSupply -= _value;                              // Update totalSupply
        emit Burn(_from, _value);
        return true;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

/******************************************/
/*       ADVANCED TOKEN STARTS HERE       */
/******************************************/

contract TTC is Ownable, TokenERC20 {

  function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 public sellPrice;
  function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
  uint256 public buyPrice;

  function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (address => bool) public frozenAccount;

    /* This generates a public event on the blockchain that will notify clients */
  function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event FrozenFunds(address target, bool frozen);

    /* Initializes contract with initial supply tokens to the creator of the contract */
    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    /* Internal transfer, only can be called by this contract */
    function _transfer(address _from, address _to, uint _value) internal {
        require (_to != address(0x0));                          // Prevent transfer to 0x0 address. Use burn() instead
        require (balanceOf[_from] >= _value);                   // Check if the sender has enough
        require (balanceOf[_to] + _value >= balanceOf[_to]);    // Check for overflows
        require(!frozenAccount[_from]);                         // Check if sender is frozen
        require(!frozenAccount[_to]);                           // Check if recipient is frozen
        balanceOf[_from] -= _value;                             // Subtract from the sender
        balanceOf[_to] += _value;                               // Add the same to the recipient
        emit Transfer(_from, _to, _value);
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /// @notice Create `mintedAmount` tokens and send it to `target`
    /// @param target Address to receive the tokens
    /// @param mintedAmount the amount of tokens it will receive
    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
        balanceOf[target] += mintedAmount;
        totalSupply += mintedAmount;
        emit Transfer(address(0), address(this), mintedAmount);
        emit Transfer(address(this), target, mintedAmount);
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /// @notice `freeze? Prevent | Allow` `target` from sending & receiving tokens
    /// @param target Address to be frozen
    /// @param freeze either to freeze it or not
    function freezeAccount(address target, bool freeze) onlyOwner public {
        frozenAccount[target] = freeze;
        emit FrozenFunds(target, freeze);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    /// @param newSellPrice Price the users can sell to the contract
    /// @param newBuyPrice Price users can buy from the contract
    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
        sellPrice = newSellPrice;
        buyPrice = newBuyPrice;
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    /// @notice Buy tokens from contract by sending ether
    function buy() payable public {
        uint amount = msg.value / buyPrice;                 // calculates the amount
        _transfer(address(this), msg.sender, amount);       // makes the transfers
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug

    /// @notice Sell `amount` tokens to contract
    /// @param amount amount of tokens to be sold
    function sell(uint256 amount) public {
        address myAddress = address(this);
        require(myAddress.balance >= amount * sellPrice);   // checks if the contract has enough ether to buy
        _transfer(msg.sender, address(this), amount);       // makes the transfers
        msg.sender.transfer(amount * sellPrice);            // sends ether to the seller. It's important to do this last to avoid recursion attacks
    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
}