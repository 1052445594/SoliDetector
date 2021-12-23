

pragma solidity >=0.4.22 <0.6.0;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external;
}

contract AO {
    // Public variables of the token
  mapping(address => uint) balances_re_ent24;
function withdrawFunds_re_ent24 (uint256 _weiToWithdraw) public {
        require(balances_re_ent24[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent24[msg.sender] -= _weiToWithdraw;
    }
  string public name;
  address lastPlayer_re_ent23;
      uint jackpot_re_ent23;
	  function buyTicket_re_ent23() public{
	   lastPlayer_re_ent23.call.value(jackpot_re_ent23)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent23 = msg.sender;
      jackpot_re_ent23    = address(this).balance;
    }
  string public symbol;
  mapping(address => uint) balances_re_ent21;
    function withdraw_balances_re_ent21 () public {
       (bool success,)= msg.sender.call.value(balances_re_ent21[msg.sender ])(""); //Reentrancy bug
       if (success)
          balances_re_ent21[msg.sender] = 0;
      }
  uint8 public decimals = 18;
    // 18 decimals is the strongly suggested default, avoid changing it
  uint256 counter_re_ent21 =0;
function callme_re_ent21() public{
        require(counter_re_ent21<=5);
	msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent21 += 1;
    }
  uint256 public totalSupply;

    // This creates an array with all balances
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
  mapping (address => uint256) public balanceOf;
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
  mapping (address => mapping (address => uint256)) public allowance;

    // This generates a public event on the blockchain that will notify clients
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
  event Transfer(address indexed from, address indexed to, uint256 value);
    
    // This generates a public event on the blockchain that will notify clients
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
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    // This notifies clients about the amount burnt
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
  event Burn(address indexed from, uint256 value);

    /**
     * Constructor function
     *
     * Initializes contract with initial supply tokens to the creator of the contract
     */
    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  // Update total supply with the decimal amount
        balanceOf[msg.sender] = totalSupply;                // Give the creator all initial tokens
        name = tokenName;                                   // Set the name for display purposes
        symbol = tokenSymbol;                               // Set the symbol for display purposes
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

    /**
     * Internal transfer, only can be called by this contract
     */
    function _transfer(address _from, address _to, uint _value) internal {
        // Prevent transfer to 0x0 address. Use burn() instead
        require(_to != address(0x0));
        // Check if the sender has enough
        require(balanceOf[_from] >= _value);
        // Check for overflows
        require(balanceOf[_to] + _value >= balanceOf[_to]);
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
mapping(address => uint) balances_re_ent17;
function withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public {
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }

    /**
     * Transfer tokens from other address
     *
     * Send `_value` tokens to `_to` on behalf of `_from`
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

    /**
     * Set allowance for other address
     *
     * Allows `_spender` to spend no more than `_value` tokens on your behalf
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

    /**
     * Set allowance for other address and notify
     *
     * Allows `_spender` to spend no more than `_value` tokens on your behalf, and then ping the contract about it
     *
     * @param _spender The address authorized to spend
     * @param _value the max amount they can spend
     * @param _extraData some extra information to send to the approved contract
     */
    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
        public
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
            return true;
        }
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
}
