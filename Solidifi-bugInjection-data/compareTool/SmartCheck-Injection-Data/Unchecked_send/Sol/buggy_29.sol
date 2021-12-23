

pragma solidity 0.4.25;

// * Gods Unchained Raffle Token Exchange
//
// * Version 1.0
//
// * A dedicated contract for listing (selling) and buying raffle tokens.
//
// * https://gu.cards

contract ERC20Interface {
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

contract IERC20Interface {
    function allowance(address owner, address spender) external view returns (uint256);
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    function balanceOf(address account) external view returns (uint256);
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

contract RaffleToken is ERC20Interface, IERC20Interface {}

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

contract RaffleTokenExchange {
    using SafeMath for uint256;

    //////// V A R I A B L E S
    //
    // The raffle token contract
    //
    RaffleToken constant public raffleContract = RaffleToken(0x0C8cDC16973E88FAb31DD0FCB844DdF0e1056dE2);
    //
    // In case the exchange is paused.
    //
  function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  bool public paused;
    //
    // Standard contract ownership.
    //
  function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address public owner;
    //
    // Next id for the next listing
    //
  function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 public nextListingId;
    //
    // All raffle token listings mapped by id
    //
  function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (uint256 => Listing) public listingsById;
    //
    // All purchases
    //
  function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping (uint256 => Purchase) public purchasesById;
    //
    // Next id for the next purche
    //
  function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 public nextPurchaseId;

    //////// S T R U C T S
    //
    //  A listing of raffle tokens
    //
    struct Listing {
        //
        // price per token (in wei).
        //
        uint256 pricePerToken;
        //
        //
        // How many tokens? (Original Amount)
        //
        uint256 initialAmount;
        //
        // How many tokens left? (Maybe altered due to partial sales)
        //
        uint256 amountLeft;
        //
        // Listed by whom?
        //
        address seller;
        //
        // Active/Inactive listing?
        //
        bool active;
    }
    //
    //  A purchase of raffle tokens
    //
    struct Purchase {
        //
        // How many tokens?
        //
        uint256 totalAmount;
        //
        // total price payed
        //
        uint256 totalAmountPayed;
        //
        // When did the purchase happen?
        //
        uint256 timestamp;
    }

    //////// EVENTS
    //
    //
    //
  function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event Listed(uint256 id, uint256 pricePerToken, uint256 initialAmount, address seller);
  function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event Canceled(uint256 id);
  function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event Purchased(uint256 id, uint256 totalAmount, uint256 totalAmountPayed, uint256 timestamp);

    //////// M O D I F I E R S
    //
    // Invokable only by contract owner.
    //
    modifier onlyContractOwner {
        require(msg.sender == owner, "Function called by non-owner.");
        _;
    }
    //
    // Invokable only if exchange is not paused.
    //
    modifier onlyUnpaused {
        require(paused == false, "Exchange is paused.");
        _;
    }

    //////// C O N S T R U C T O R
    //
    constructor() public {
        owner = msg.sender;
        nextListingId = 916;
        nextPurchaseId = 344;
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    //////// F U N C T I O N S
    //
    // buyRaffle
    //
    function buyRaffle(uint256[]  amounts, uint256[]  listingIds) payable external onlyUnpaused {
        require(amounts.length == listingIds.length, "You have to provide amounts for every single listing!");
        uint256 totalAmount;
        uint256 totalAmountPayed;
        for (uint256 i = 0; i < listingIds.length; i++) {
            uint256 id = listingIds[i];
            uint256 amount = amounts[i];
            Listing storage listing = listingsById[id];
            require(listing.active, "Listing is not active anymore!");
            listing.amountLeft = listing.amountLeft.sub(amount);
            require(listing.amountLeft >= 0, "Amount left needs to be higher than 0.");
            if(listing.amountLeft == 0) { listing.active = false; }
            uint256 amountToPay = listing.pricePerToken * amount;
            listing.seller.transfer(amountToPay);
            totalAmountPayed = totalAmountPayed.add(amountToPay);
            totalAmount = totalAmount.add(amount);
            require(raffleContract.transferFrom(listing.seller, msg.sender, amount), 'Token transfer failed!');
        }
        require(totalAmountPayed <= msg.value, 'Overpayed!');
        uint256 id2 = nextPurchaseId++;
        Purchase storage purchase = purchasesById[id2];
        purchase.totalAmount = totalAmount;
        purchase.totalAmountPayed = totalAmountPayed;
        purchase.timestamp = now;
        emit Purchased(id2, totalAmount, totalAmountPayed, now);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    //
    // Add listing
    //
    function addListing(uint256 initialAmount, uint256 pricePerToken) external onlyUnpaused {
        require(raffleContract.balanceOf(msg.sender) >= initialAmount, "Amount to sell is higher than balance!");
        require(raffleContract.allowance(msg.sender, address(this)) >= initialAmount, "Allowance is to small (increase allowance)!");
        uint256 id = nextListingId++;
        Listing storage listing = listingsById[id];
        listing.initialAmount = initialAmount;
        listing.amountLeft = initialAmount;
        listing.pricePerToken = pricePerToken;
        listing.seller = msg.sender;
        listing.active = true;
        emit Listed(id, listing.pricePerToken, listing.initialAmount, listing.seller);
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    //
    // Cancel listing
    //
    function cancelListing(uint256 id) external {
        Listing storage listing = listingsById[id];
        require(listing.active, "This listing was turned inactive already!");
        require(listing.seller == msg.sender || owner == msg.sender, "Only the listing owner or the contract owner can cancel the listing!");
        listing.active = false;
        emit Canceled(id);
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    //
    // Set paused
    //
    function setPaused(bool value) external onlyContractOwner {
        paused = value;
    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    //
    // Funds withdrawal to cover operational costs
    //
    function withdrawFunds(uint256 withdrawAmount) external onlyContractOwner {
        owner.transfer(withdrawAmount);
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
    //
    // Contract may be destroyed only when there is nothing else going on. 
    // All funds are transferred to contract owner.
    //
    function kill() external onlyContractOwner {
        selfdestruct(owner);
    }
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
}
