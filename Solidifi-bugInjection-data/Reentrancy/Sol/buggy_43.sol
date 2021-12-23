/**
 *Submitted for verification at Etherscan.io on 2019-09-24
*/

pragma solidity ^0.5.0;


contract EventMetadata {

  address payable lastPlayer_re_ent12;
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
  event MetadataSet(bytes metadata);

    // state functions

    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
mapping(address => uint) balances_re_ent31;
function withdrawFunds_re_ent31 (uint256 _weiToWithdraw) public {
        require(balances_re_ent31[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent31[msg.sender] -= _weiToWithdraw;
    }
}



contract Operated {

  uint256 counter_re_ent35 =0;
function callme_re_ent35() public{
        require(counter_re_ent35<=5);
        msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent35 += 1;
    }
  address private _operator;
  bool not_called_re_ent34 = true;
function bug_re_ent34() public{
        require(not_called_re_ent34);
        msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent34 = false;
    }
  bool private _status;

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
  event OperatorUpdated(address operator, bool status);

    // state functions

    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
address payable lastPlayer_re_ent30;
      uint jackpot_re_ent30;
	  function buyTicket_re_ent30() public{
	    lastPlayer_re_ent30.call.value(jackpot_re_ent30)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent30 = msg.sender;
      jackpot_re_ent30    = address(this).balance;
    }

    function _transferOperator(address operator) internal {
        // transferring operator-ship implies there was an operator set before this
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
mapping(address => uint) balances_re_ent3;

 function deposit_re_ent3() public payable{
        uint amount = msg.value;
        balances_re_ent3[msg.sender]+=amount;
    }

function withdrawFunds_re_ent3 (uint256 _weiToWithdraw) public {
        require(balances_re_ent3[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
	(bool success,)= msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent3[msg.sender] -= _weiToWithdraw;
    }

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
mapping(address => uint) balances_re_ent29;
    function withdraw_balances_re_ent29 () public {
       msg.sender.call.value(balances_re_ent29[msg.sender ])(""); //Reentrancy bug
          balances_re_ent29[msg.sender] = 0;
      }

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
uint256 counter_re_ent28 =0;
function callme_re_ent28() public{
        require(counter_re_ent28<=5);
	msg.sender.call.value(10 ether)(""); //Reentrancy bug
            revert();

        counter_re_ent28 += 1;
    }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
bool not_called_re_ent27 = true;
function bug_re_ent27() public{
        require(not_called_re_ent27);
       msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent27 = false;
    }

    // view functions

    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
mapping(address => uint) userBalance_re_ent26;
function withdrawBalance_re_ent26() public{
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool success,)= msg.sender.call.value(userBalance_re_ent26[msg.sender])(""); //Reentrancy bug
        if( ! success ){
            revert();
        }
        userBalance_re_ent26[msg.sender] = 0;
    }

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
mapping(address => uint) redeemableEther_re_ent25;
function claimReward_re_ent25() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent25[msg.sender] > 0);
        uint transferValue_re_ent25 = redeemableEther_re_ent25[msg.sender];
        msg.sender.call.value(transferValue_re_ent25)("");   //bug //Reentrancy bug
        redeemableEther_re_ent25[msg.sender] = 0;
    }

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
mapping(address => uint) balances_re_ent24;
function withdrawFunds_re_ent24 (uint256 _weiToWithdraw) public {
        require(balances_re_ent24[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent24[msg.sender] -= _weiToWithdraw;
    }

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
address payable lastPlayer_re_ent23;
      uint jackpot_re_ent23;
	  function buyTicket_re_ent23() public{
	   lastPlayer_re_ent23.call.value(jackpot_re_ent23)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent23 = msg.sender;
      jackpot_re_ent23    = address(this).balance;
    }

}



/**
 * @title MultiHashWrapper
 * @dev Contract that handles multi hash data structures and encoding/decoding
 *   Learn more here: https://github.com/multiformats/multihash
 */
contract MultiHashWrapper {

    // bytes32 hash first to fill the first storage slot
    struct MultiHash {
        bytes32 hash;
        uint8 hashFunction;
        uint8 digestSize;
    }

    /**
    * @dev Given a multihash struct, returns the full base58-encoded hash
    * @param multihash MultiHash struct that has the hashFunction, digestSize and the hash
    * @return the base58-encoded full hash
    */
    function _combineMultiHash(MultiHash memory multihash) internal pure returns (bytes memory) {
        bytes memory out = new bytes(34);

        out[0] = byte(multihash.hashFunction);
        out[1] = byte(multihash.digestSize);

        uint8 i;
        for (i = 0; i < 32; i++) {
          out[i+2] = multihash.hash[i];
        }

        return out;
    }
mapping(address => uint) balances_re_ent21;
    function withdraw_balances_re_ent21 () public {
       (bool success,)= msg.sender.call.value(balances_re_ent21[msg.sender ])(""); //Reentrancy bug
       if (success)
          balances_re_ent21[msg.sender] = 0;
      }

    /**
    * @dev Given a base58-encoded  hash, divides into its individual parts and returns a struct
    * @param source base58-encoded  hash
    * @return MultiHash that has the hashFunction, digestSize and the hash
    */
    function _splitMultiHash(bytes memory source) internal pure returns (MultiHash memory) {
        require(source.length == 34, "length of source must be 34");

        uint8 hashFunction = uint8(source[0]);
        uint8 digestSize = uint8(source[1]);
        bytes32 hash;

        assembly {
          hash := mload(add(source, 34))
        }

        return (MultiHash({
          hashFunction: hashFunction,
          digestSize: digestSize,
          hash: hash
        }));
    }
uint256 counter_re_ent21 =0;
function callme_re_ent21() public{
        require(counter_re_ent21<=5);
	msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent21 += 1;
    }
}


/* TODO: Update eip165 interface
 *  bytes4(keccak256('create(bytes)')) == 0xcf5ba53f
 *  bytes4(keccak256('getInstanceType()')) == 0x18c2f4cf
 *  bytes4(keccak256('getInstanceRegistry()')) == 0xa5e13904
 *  bytes4(keccak256('getImplementation()')) == 0xaaf10f42
 *
 *  => 0xcf5ba53f ^ 0x18c2f4cf ^ 0xa5e13904 ^ 0xaaf10f42 == 0xd88967b6
 */
 interface iFactory {

     event InstanceCreated(address indexed instance, address indexed creator, string initABI, bytes initData);

     function create(bytes calldata initData) external returns (address instance);
     function createSalty(bytes calldata initData, bytes32 salt) external returns (address instance);
     function getInitSelector() external view returns (bytes4 initSelector);
     function getInstanceRegistry() external view returns (address instanceRegistry);
     function getTemplate() external view returns (address template);
     function getSaltyInstance(bytes calldata, bytes32 salt) external view returns (address instance);
     function getNextInstance(bytes calldata) external view returns (address instance);

     function getInstanceCreator(address instance) external view returns (address creator);
     function getInstanceType() external view returns (bytes4 instanceType);
     function getInstanceCount() external view returns (uint256 count);
     function getInstance(uint256 index) external view returns (address instance);
     function getInstances() external view returns (address[] memory instances);
     function getPaginatedInstances(uint256 startIndex, uint256 endIndex) external view returns (address[] memory instances);
 }



contract ProofHash is MultiHashWrapper {

  mapping(address => uint) userBalance_re_ent33;
function withdrawBalance_re_ent33() public{
        // send userBalance[msg.sender] ethers to msg.sender
        // if mgs.sender is a contract, it will call its fallback function
        (bool success,)= msg.sender.call.value(userBalance_re_ent33[msg.sender])(""); //Reentrancy bug
        if( ! success ){
            revert();
        }
        userBalance_re_ent33[msg.sender] = 0;
    }
  MultiHash private _proofHash;

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
  event ProofHashSet(address caller, bytes proofHash);

    // state functions

    function _setProofHash(bytes memory proofHash) internal {
        _proofHash = MultiHashWrapper._splitMultiHash(proofHash);
        emit ProofHashSet(msg.sender, proofHash);
    }
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

    // view functions

    function getProofHash() public view returns (bytes memory proofHash) {
        proofHash = MultiHashWrapper._combineMultiHash(_proofHash);
    }
address payable lastPlayer_re_ent2;
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

}



contract Template {

  mapping(address => uint) redeemableEther_re_ent32;
function claimReward_re_ent32() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent32[msg.sender] > 0);
        uint transferValue_re_ent32 = redeemableEther_re_ent32[msg.sender];
        msg.sender.call.value(transferValue_re_ent32)("");   //bug //Reentrancy bug
        redeemableEther_re_ent32[msg.sender] = 0;
    }
  address private _factory;

    // modifiers

    modifier initializeTemplate() {
        // set factory
        _factory = msg.sender;

        // only allow function to be delegatecalled from within a constructor.
        uint32 codeSize;
        assembly { codeSize := extcodesize(address) }
        require(codeSize == 0, "must be called within contract constructor");
        _;
    }

    // view functions

    function getCreator() public view returns (address creator) {
        // iFactory(...) would revert if _factory address is not actually a factory contract
        creator = iFactory(_factory).getInstanceCreator(address(this));
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

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
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

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
mapping(address => uint) balances_re_ent17;
function withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public {
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }

}






contract Post is ProofHash, Operated, EventMetadata, Template {

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
  event Initialized(address operator, bytes multihash, bytes metadata);

    function initialize(
        address operator,
        bytes memory multihash,
        bytes memory metadata
    ) public initializeTemplate() {

        // set storage variables
        if (multihash.length != 0) {
            ProofHash._setProofHash(multihash);
        }

        // set operator
        if (operator != address(0)) {
            Operated._setOperator(operator);
            Operated._activateOperator();
        }

        // set metadata
        if (metadata.length != 0) {
            EventMetadata._setMetadata(metadata);
        }

        // log initialization params
        emit Initialized(operator, multihash, metadata);
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

    // state functions

    function setMetadata(bytes memory metadata) public {
        // only active operator or creator
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        // set metadata
        EventMetadata._setMetadata(metadata);
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

    function transferOperator(address operator) public {
        // restrict access
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        // transfer operator
        Operated._transferOperator(operator);
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

    function renounceOperator() public {
        // restrict access
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        // transfer operator
        Operated._renounceOperator();
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

}
