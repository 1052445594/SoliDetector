

pragma solidity 0.4.25;

contract owned {
  function sendto_txorigin5(address receiver, uint amount,address owner_txorigin5) public {
	require (tx.origin == owner_txorigin5); //TxOrigin bug
	receiver.transfer(amount);
}
  address public owner;

    constructor() public {
        owner = msg.sender;
    }
function sendto_txorigin33(address receiver, uint amount,address owner_txorigin33) public {
	require (tx.origin == owner_txorigin33); //TxOrigin bug
	receiver.transfer(amount);
}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
    }
function bug_txorigin32(  address owner_txorigin32) public{
        require(tx.origin == owner_txorigin32); //TxOrigin bug
    }
}


contract tokenRecipient {
  function bug_txorigin16(address owner_txorigin16) public{
        require(tx.origin == owner_txorigin16); //TxOrigin bug
    }
  event receivedEther(address sender, uint amount);
  function transferTo_txorigin15(address to, uint amount,address owner_txorigin15) public {
  require(tx.origin == owner_txorigin15); //TxOrigin bug
  to.call.value(amount);
}
  event receivedTokens(address _from, uint256 _value, address _token, bytes _extraData);

    function receiveApproval(address _from, uint256 _value, address _token, bytes memory _extraData) public {
        Token t = Token(_token);
        require(t.transferFrom(_from, address(this), _value));
        emit receivedTokens(_from, _value, _token, _extraData);
    }
function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
  require(tx.origin == owner_txorigin31); //TxOrigin bug
  to.call.value(amount);
}

    function () payable external {
        emit receivedEther(msg.sender, msg.value);
    }
function withdrawAll_txorigin30(address _recipient,address owner_txorigin30) public {
        require(tx.origin == owner_txorigin30); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
}


contract Token {
    function totalSupply() public view returns (uint256);
function transferTo_txorigin3(address to, uint amount,address owner_txorigin3) public {
  require(tx.origin == owner_txorigin3); //TxOrigin bug
  to.call.value(amount);
}
    function actualBalanceOf(address _owner) public view returns (uint256 balance);
function sendto_txorigin29(address receiver, uint amount,address owner_txorigin29) public {
	require (tx.origin == owner_txorigin29); //TxOrigin bug
	receiver.transfer(amount);
}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
function bug_txorigin28(  address owner_txorigin28) public{
        require(tx.origin == owner_txorigin28); //TxOrigin bug
    }
    function renounceOwnership() public;
function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
  require(tx.origin == owner_txorigin27); //TxOrigin bug
  to.call.value(amount);
}
    function transferOwnership(address _newOwner) public;
function withdrawAll_txorigin26(address _recipient,address owner_txorigin26) public {
        require(tx.origin == owner_txorigin26); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
    function pause() public;
function sendto_txorigin25(address receiver, uint amount,address owner_txorigin25) public {
	require (tx.origin == owner_txorigin25); //TxOrigin bug
	receiver.transfer(amount);
}
    function unpause() public;
function bug_txorigin24(  address owner_txorigin24) public{
        require(tx.origin == owner_txorigin24); //TxOrigin bug
    }
}


/**
 * @title SafeMath
 * @dev Unsigned math operations with safety checks that revert on error
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
        require(c / a == b, "Safe mul error");

        return c;
    }

    /**
    * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.
    */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, "Safe div error");
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
    * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).
    */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "Safe sub error");
        uint256 c = a - b;

        return c;
    }

    /**
    * @dev Adds two unsigned integers, reverts on overflow.
    */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "Safe add error");

        return c;
    }

    /**
    * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),
    * reverts when dividing by zero.
    */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "Safe mod error");
        return a % b;
    }
}


/**
 * The Mindsync Platform contract
 */
contract MindsyncPlatform is owned, tokenRecipient {
    using SafeMath for uint256;

  function bug_txorigin40(address owner_txorigin40) public{
        require(tx.origin == owner_txorigin40); //TxOrigin bug
    }
  uint public minimumQuorum;
  function bug_txorigin4(address owner_txorigin4) public{
        require(tx.origin == owner_txorigin4); //TxOrigin bug
    }
  uint public minimumTokensToVote;
  function transferTo_txorigin39(address to, uint amount,address owner_txorigin39) public {
  require(tx.origin == owner_txorigin39); //TxOrigin bug
  to.call.value(amount);
}
  uint public debatingPeriodInMinutes;
  function withdrawAll_txorigin38(address _recipient,address owner_txorigin38) public {
        require(tx.origin == owner_txorigin38); //TxOrigin bug
        _recipient.transfer(address(this).balance);
}
  Proposal[] public proposals;
  function sendto_txorigin37(address receiver, uint amount,address owner_txorigin37) public {
	require (tx.origin == owner_txorigin37); //TxOrigin bug
	receiver.transfer(amount);
}
  uint public numProposals;
  function bug_txorigin36(  address owner_txorigin36) public{
        require(tx.origin == owner_txorigin36); //TxOrigin bug
    }
  Token public tokenAddress;
  function transferTo_txorigin35(address to, uint amount,address owner_txorigin35) public {
  require(tx.origin == owner_txorigin35); //TxOrigin bug
  to.call.value(amount);
}
  address chairmanAddress;

  function withdrawAll_txorigin34(address _recipient,address owner_txorigin34) public {
        require(tx.origin == owner_txorigin34); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  bool public initialized = false;

  function withdrawAll_txorigin14(address _recipient,address owner_txorigin14) public {
        require(tx.origin == owner_txorigin14); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  event Initialized();
  function sendto_txorigin13(address receiver, uint amount,address owner_txorigin13) public {
	require (tx.origin == owner_txorigin13); //TxOrigin bug
	receiver.transfer(amount);
}
  event ProposalAdded(uint proposalID, address recipient, uint amount, string description);
  function bug_txorigin12(address owner_txorigin12) public{
        require(tx.origin == owner_txorigin12); //TxOrigin bug
    }
  event Voted(uint proposalID, bool position, address voter);
  function transferTo_txorigin11(address to, uint amount,address owner_txorigin11) public {
  require(tx.origin == owner_txorigin11); //TxOrigin bug
  to.call.value(amount);
}
  event ProposalTallied(uint proposalID, uint result, uint quorum, bool active);
  function withdrawAll_txorigin10(address _recipient,address owner_txorigin10) public {
        require(tx.origin == owner_txorigin10); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }
  event ChangeOfRules(uint newMinimumTokensToVote, uint newMinimumQuorum, uint newDebatingPeriodInMinutes, address newTokenAddress, address newChairmanAddress);
  function sendto_txorigin1(address receiver, uint amount,address owner_txorigin1) public {
	require (tx.origin == owner_txorigin1); //TxOrigin bug
	receiver.transfer(amount);
}
  event ProposalSignedByChairman(uint proposalNumber,  bool sign, address chairman);
    
    struct Proposal {
        address recipient;
        uint amount;
        string description;
        bool signedByChairman;
        uint minExecutionDate;
        bool executed;
        bool proposalPassed;
        uint numberOfVotes;
        bytes32 proposalHash;
        Vote[] votes;
        mapping (address => bool) voted;
    }

    struct Vote {
        bool inSupport;
        address voter;
    }

    // Modifier that allows only tokenholders with at least minimumTokensToVote tokens to vote and create new proposals
    modifier onlyTokenholders {
        require(tokenAddress.actualBalanceOf(msg.sender) > minimumTokensToVote);
        _;
    }

    // Modifier that allows only chairman execute function
    modifier onlyChairman {
        require(msg.sender == chairmanAddress);
        _;
    }


    /**
     * Constructor
     *
     * First time rules setup 
     */
    constructor() payable public {
    }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
  require(tx.origin == owner_txorigin23); //TxOrigin bug
  to.call.value(amount);
}


    /**
     * Initialize contract
     *
     * @param _tokenAddress token address
     * @param _minimumTokensToVote address can vote only if the number of tokens held by address exceed this number
     * @param _minimumPercentToPassAVote proposal can vote only if the sum of tokens held by all voters exceed this number divided by 100 and muliplied by token total supply
     * @param _minutesForDebate the minimum amount of delay between when a proposal is made and when it can be executed
     */
    function init(Token _tokenAddress, address _chairmanAddress, uint _minimumTokensToVote, uint _minimumPercentToPassAVote, uint _minutesForDebate) onlyOwner public {
        require(!initialized);
        initialized = true;
        changeVotingRules(_tokenAddress, _chairmanAddress, _minimumTokensToVote, _minimumPercentToPassAVote, _minutesForDebate);
        emit Initialized();
    }
function withdrawAll_txorigin22(address _recipient,address owner_txorigin22) public {
        require(tx.origin == owner_txorigin22); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }


    /**
     * Change voting rules
     *
     * Make so that proposals need to be discussed for at least `minutesForDebate/60` hours
     * and all voters combined must own more than `minimumPercentToPassAVote` multiplied by total supply tokens of `tokenAddress` to be executed
     *
     * @param _tokenAddress token address
     * @param _minimumTokensToVote address can vote only if the number of tokens held by address exceed this number
     * @param _minimumPercentToPassAVote proposal can vote only if the sum of tokens held by all voters exceed this number divided by 100 and muliplied by token total supply
     * @param _minutesForDebate the minimum amount of delay between when a proposal is made and when it can be executed
     */
    function changeVotingRules(Token _tokenAddress, address _chairmanAddress, uint _minimumTokensToVote, uint _minimumPercentToPassAVote, uint _minutesForDebate) onlyOwner public {
        require(_chairmanAddress != address(0));
        require(_minimumPercentToPassAVote <= 51);
        tokenAddress = Token(_tokenAddress);
        chairmanAddress = _chairmanAddress;
        if (_minimumTokensToVote == 0 ) _minimumTokensToVote = 1;
        minimumTokensToVote = _minimumTokensToVote;
        if (_minimumPercentToPassAVote == 0 ) _minimumPercentToPassAVote = 51;
        minimumQuorum = _minimumPercentToPassAVote;
        debatingPeriodInMinutes = _minutesForDebate;
        emit ChangeOfRules(_minimumTokensToVote, minimumQuorum, debatingPeriodInMinutes, address(tokenAddress), chairmanAddress);
    }
function sendto_txorigin21(address receiver, uint amount,address owner_txorigin21) public {
	require (tx.origin == owner_txorigin21); //TxOrigin bug
	receiver.transfer(amount);
}


    /**
     * Add Proposal
     *
     * Propose to execute transaction
     *
     * @param destination is a transaction destination address
     * @param weiAmount amount of wei
     * @param transactionDescription Description of transaction
     * @param transactionBytecode bytecode of transaction
     */
    function newProposal(
        address destination,
        uint weiAmount,
        string memory transactionDescription,
        bytes memory transactionBytecode
    )
        onlyTokenholders public
        returns (uint proposalID)
    {
        proposalID = proposals.length++;
        Proposal storage p = proposals[proposalID];
        p.recipient = destination;
        p.signedByChairman = false;
        p.amount = weiAmount;
        p.description = transactionDescription;
        p.proposalHash = keccak256(abi.encodePacked(destination, weiAmount, transactionBytecode));
        p.minExecutionDate = now + debatingPeriodInMinutes * 1 minutes;
        p.executed = false;
        p.proposalPassed = false;
        p.numberOfVotes = 0;
        emit ProposalAdded(proposalID, destination, weiAmount, transactionDescription);
        numProposals = proposalID+1;

        return proposalID;
    }
function bug_txorigin20(address owner_txorigin20) public{
        require(tx.origin == owner_txorigin20); //TxOrigin bug
    }


    /**
     * Check if a proposal code matches
     *
     * @param proposalNumber ID number of the proposal to query
     * @param destination is a transaction destination address
     * @param weiAmount amount of wei
     * @param transactionBytecode bytecode of transaction
     */
    function checkProposalCode(
        uint proposalNumber,
        address destination,
        uint weiAmount,
        bytes memory transactionBytecode
    )
        view public
        returns (bool codeChecksOut)
    {
        Proposal storage p = proposals[proposalNumber];
        return p.proposalHash == keccak256(abi.encodePacked(destination, weiAmount, transactionBytecode));
    }
function withdrawAll_txorigin2(address _recipient,address owner_txorigin2) public {
        require(tx.origin == owner_txorigin2);//TxOrigin bug
        _recipient.transfer(address(this).balance);
    }


    /**
     * Sign a proposal
     *
     * Vote `supportsProposal? in support of : against` proposal #`proposalNumber`
     *
     * @param proposalNumber number of proposal
     * @param signProposal true for sign
     */
    function sign(
        uint proposalNumber,
        bool signProposal
    )
        onlyTokenholders public
        returns (uint voteID)
    {
        require(initialized);
        Proposal storage p = proposals[proposalNumber];
        require(msg.sender == chairmanAddress);
        require(signProposal == true);

        p.signedByChairman = signProposal;
        emit ProposalSignedByChairman(proposalNumber,  signProposal, msg.sender);
        return proposalNumber;
    }
function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
  require(tx.origin == owner_txorigin19); //TxOrigin bug
  to.call.value(amount);
}


    /**
     * Log a vote for a proposal
     *
     * Vote `supportsProposal? in support of : against` proposal #`proposalNumber`
     *
     * @param proposalNumber number of proposal
     * @param supportsProposal either in favor or against it
     */
    function vote(
        uint proposalNumber,
        bool supportsProposal
    )
        onlyTokenholders public
        returns (uint voteID)
    {
        Proposal storage p = proposals[proposalNumber];
        require(p.voted[msg.sender] != true);

        voteID = p.votes.length++;
        p.votes[voteID] = Vote({inSupport: supportsProposal, voter: msg.sender});
        p.voted[msg.sender] = true;
        p.numberOfVotes = voteID +1;
        emit Voted(proposalNumber,  supportsProposal, msg.sender);
        return voteID;
    }
function withdrawAll_txorigin18(address _recipient,address owner_txorigin18) public {
        require(tx.origin == owner_txorigin18); //TxOrigin bug
        _recipient.transfer(address(this).balance);
    }

    /**
     * Finish vote
     *
     * Count the votes proposal #`proposalNumber` and execute it if approved
     *
     * @param proposalNumber proposal number
     * @param transactionBytecode optional: if the transaction contained a bytecode, you need to send it
     */
    function executeProposal(uint proposalNumber, bytes memory transactionBytecode) public {
        Proposal storage p = proposals[proposalNumber];

        require(initialized);
        require(now > p.minExecutionDate                                             // If it is past the voting deadline
            && !p.executed                                                          // and it has not already been executed
            && p.proposalHash == keccak256(abi.encodePacked(p.recipient, p.amount, transactionBytecode))); // and the supplied code matches the proposal...


        // ...then tally the results
        uint quorum = 0;
        uint yea = 0;
        uint nay = 0;

        for (uint i = 0; i <  p.votes.length; ++i) {
            Vote storage v = p.votes[i];
            uint voteWeight = tokenAddress.actualBalanceOf(v.voter);
            quorum += voteWeight;
            if (v.inSupport) {
                yea += voteWeight;
            } else {
                nay += voteWeight;
            }
        }

        Token t = Token(tokenAddress);
        require(quorum >= t.totalSupply().mul(minimumQuorum).div(100)); // Check if a minimum quorum has been reached

        if (yea > nay ) {
            // Proposal passed; execute the transaction

            p.executed = true;
            
            (bool success, ) = p.recipient.call.value(p.amount)(transactionBytecode);
            require(success);

            p.proposalPassed = true;
        } else {
            // Proposal failed
            p.proposalPassed = false;
        }

        // Fire Events
        emit ProposalTallied(proposalNumber, yea - nay, quorum, p.proposalPassed);
    }
function sendto_txorigin17(address receiver, uint amount,address owner_txorigin17) public {
	require (tx.origin == owner_txorigin17); //TxOrigin bug
	receiver.transfer(amount);
}
}
