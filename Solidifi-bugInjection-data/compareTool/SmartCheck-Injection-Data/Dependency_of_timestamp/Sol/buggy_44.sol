

pragma solidity 0.4.25;


contract EventMetadata {

  uint256 bugv_tmstmp5 = block.timestamp;
  event MetadataSet(bytes metadata);

    // state functions

    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
function bug_tmstmp29() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
}



contract Operated {

  address winner_tmstmp31;
function play_tmstmp31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp31 = msg.sender;}}
  address private _operator;
  address winner_tmstmp30;
function play_tmstmp30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp30 = msg.sender;}}
  bool private _status;

  uint256 bugv_tmstmp4 = block.timestamp;
  event OperatorUpdated(address operator, bool status);

    // state functions

    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
function bug_tmstmp28 () public payable {
	uint pastBlockTime_tmstmp28; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp28); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp28 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function _transferOperator(address operator) internal {
        // transferring operator-ship implies there was an operator set before this
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
address winner_tmstmp27;
function play_tmstmp27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp27 = msg.sender;}}

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
address winner_tmstmp26;
function play_tmstmp26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp26 = msg.sender;}}

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
function bug_tmstmp25() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
function bug_tmstmp24 () public payable {
	uint pastBlockTime_tmstmp24; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp24); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp24 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    // view functions

    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
address winner_tmstmp23;
function play_tmstmp23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp23 = msg.sender;}}

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
address winner_tmstmp22;
function play_tmstmp22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp22 = msg.sender;}}

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
function bug_tmstmp21() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
function bug_tmstmp20 () public payable {
	uint pastBlockTime_tmstmp20; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp20); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp20 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

}



contract ProofHashes {

  uint256 bugv_tmstmp3 = block.timestamp;
  event HashFormatSet(uint8 hashFunction, uint8 digestSize);
  uint256 bugv_tmstmp2 = block.timestamp;
  event HashSubmitted(bytes32 hash);

    // state functions

    function _setMultiHashFormat(uint8 hashFunction, uint8 digestSize) internal {
        // emit event
        emit HashFormatSet(hashFunction, digestSize);
    }
address winner_tmstmp2;
function play_tmstmp2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp2 = msg.sender;}}

    function _submitHash(bytes32 hash) internal {
        // emit event
        emit HashSubmitted(hash);
    }
address winner_tmstmp19;
function play_tmstmp19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp19 = msg.sender;}}

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
address winner_tmstmp18;
function play_tmstmp18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp18 = msg.sender;}}

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
function bug_tmstmp17() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
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

     function create(bytes initData) external returns (address instance);
     function createSalty(bytes initData, bytes32 salt) external returns (address instance);
     function getInitSelector() external view returns (bytes4 initSelector);
     function getInstanceRegistry() external view returns (address instanceRegistry);
     function getTemplate() external view returns (address template);
     function getSaltyInstance(bytes, bytes32 salt) external view returns (address instance);
     function getNextInstance(bytes) external view returns (address instance);

     function getInstanceCreator(address instance) external view returns (address creator);
     function getInstanceType() external view returns (bytes4 instanceType);
     function getInstanceCount() external view returns (uint256 count);
     function getInstance(uint256 index) external view returns (address instance);
     function getInstances() external view returns (address[] memory instances);
     function getPaginatedInstances(uint256 startIndex, uint256 endIndex) external view returns (address[] memory instances);
 }



contract Template {

  address winner_tmstmp3;
function play_tmstmp3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp3 = msg.sender;}}
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
function bug_tmstmp16 () public payable {
	uint pastBlockTime_tmstmp16; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp16); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp16 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
address winner_tmstmp15;
function play_tmstmp15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp15 = msg.sender;}}

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
address winner_tmstmp14;
function play_tmstmp14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp14 = msg.sender;}}

}







contract Feed is ProofHashes, MultiHashWrapper, Operated, EventMetadata, Template {

  uint256 bugv_tmstmp1 = block.timestamp;
  event Initialized(address operator, bytes multihash, bytes metadata);

    function initialize(
        address operator,
        bytes memory multihash,
        bytes memory metadata
    ) public initializeTemplate() {
        // set operator
        if (operator != address(0)) {
            Operated._setOperator(operator);
            Operated._activateOperator();
        }

        // add multihash to storage
        if (multihash.length != 0) {
            // unpack multihash
            MultiHashWrapper.MultiHash memory multihashObj = MultiHashWrapper._splitMultiHash(multihash);

            // set multihash format
            ProofHashes._setMultiHashFormat(multihashObj.hashFunction, multihashObj.digestSize);

            // submit hash
            ProofHashes._submitHash(multihashObj.hash);
        }

        // set metadata
        if (metadata.length != 0) {
            EventMetadata._setMetadata(metadata);
        }

        // log initialization params
        emit Initialized(operator, multihash, metadata);
    }
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    // state functions

    function submitHash(bytes32 multihash) public {
        // only active operator or creator
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        // add multihash to storage
        ProofHashes._submitHash(multihash);
    }
function bug_tmstmp12 () public payable {
	uint pastBlockTime_tmstmp12; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp12); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp12 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }

    function setMetadata(bytes memory metadata) public {
        // only active operator or creator
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        // set metadata
        EventMetadata._setMetadata(metadata);
    }
address winner_tmstmp11;
function play_tmstmp11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp11 = msg.sender;}}

    function transferOperator(address operator) public {
        // restrict access
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        // transfer operator
        Operated._transferOperator(operator);
    }
address winner_tmstmp10;
function play_tmstmp10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp10 = msg.sender;}}

    function renounceOperator() public {
        // restrict access
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        // transfer operator
        Operated._renounceOperator();
    }
function bug_tmstmp1() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

}
