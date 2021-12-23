

pragma solidity ^0.5.8;

contract Ownable
{
  address winner_tmstmp31;
function play_tmstmp31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp31 = msg.sender;}}
  bool private stopped;
  address winner_tmstmp30;
function play_tmstmp30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp30 = msg.sender;}}
  address private _owner;
  address winner_tmstmp3;
function play_tmstmp3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp3 = msg.sender;}}
  address private _master;

  address winner_tmstmp10;
function play_tmstmp10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp10 = msg.sender;}}
  event Stopped();
  function bug_tmstmp1() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
  event Started();
  uint256 bugv_tmstmp5 = block.timestamp;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  uint256 bugv_tmstmp4 = block.timestamp;
  event MasterRoleTransferred(address indexed previousMaster, address indexed newMaster);

    constructor () internal
    {
        stopped = false;
        _owner = msg.sender;
        _master = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
        emit MasterRoleTransferred(address(0), _master);
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

    function owner() public view returns (address)
    {
        return _owner;
    }
address winner_tmstmp27;
function play_tmstmp27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp27 = msg.sender;}}

    function master() public view returns (address)
    {
        return _master;
    }
address winner_tmstmp26;
function play_tmstmp26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp26 = msg.sender;}}

    modifier onlyOwner()
    {
        require(isOwner());
        _;
    }

    modifier onlyMaster()
    {
        require(isMaster() || isOwner());
        _;
    }

    modifier onlyWhenNotStopped()
    {
        require(!isStopped());
        _;
    }

    function isOwner() public view returns (bool)
    {
        return msg.sender == _owner;
    }
function bug_tmstmp25() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function isMaster() public view returns (bool)
    {
        return msg.sender == _master;
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

    function transferOwnership(address newOwner) external onlyOwner
    {
        _transferOwnership(newOwner);
    }
address winner_tmstmp23;
function play_tmstmp23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp23 = msg.sender;}}

    function transferMasterRole(address newMaster) external onlyOwner
    {
        _transferMasterRole(newMaster);
    }
address winner_tmstmp22;
function play_tmstmp22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp22 = msg.sender;}}

    function isStopped() public view returns (bool)
    {
        return stopped;
    }
function bug_tmstmp21() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function stop() public onlyOwner
    {
        _stop();
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

    function start() public onlyOwner
    {
        _start();
    }
address winner_tmstmp2;
function play_tmstmp2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp2 = msg.sender;}}

    function _transferOwnership(address newOwner) internal
    {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
address winner_tmstmp19;
function play_tmstmp19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp19 = msg.sender;}}

    function _transferMasterRole(address newMaster) internal
    {
        require(newMaster != address(0));
        emit MasterRoleTransferred(_master, newMaster);
        _master = newMaster;
    }
address winner_tmstmp18;
function play_tmstmp18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp18 = msg.sender;}}

    function _stop() internal
    {
        emit Stopped();
        stopped = true;
    }
function bug_tmstmp17() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function _start() internal
    {
        emit Started();
        stopped = false;
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
}

contract ChannelWallet is Ownable
{
  function bug_tmstmp29() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
  mapping(string => address) private addressMap;

  uint256 bugv_tmstmp3 = block.timestamp;
  event SetAddress(string channelId, address _address);
  uint256 bugv_tmstmp2 = block.timestamp;
  event UpdateAddress(string from, string to);
  uint256 bugv_tmstmp1 = block.timestamp;
  event DeleteAddress(string account);

    function version() external pure returns(string memory)
    {
        return '0.0.1';
    }
address winner_tmstmp15;
function play_tmstmp15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp15 = msg.sender;}}

    function getAddress(string calldata channelId) external view returns (address)
    {
        return addressMap[channelId];
    }
address winner_tmstmp14;
function play_tmstmp14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp14 = msg.sender;}}

    function setAddress(string calldata channelId, address _address) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = _address;

        emit SetAddress(channelId, _address);
    }
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    function updateChannel(string calldata from, string calldata to, address _address) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(from).length > 0);
        require(bytes(to).length > 0);
        require(addressMap[to] == address(0));

        addressMap[to] = _address;

        addressMap[from] = address(0);

        emit UpdateAddress(from, to);
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

    function deleteChannel(string calldata channelId) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = address(0);

        emit DeleteAddress(channelId);
    }
address winner_tmstmp11;
function play_tmstmp11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp11 = msg.sender;}}
}