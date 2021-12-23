
pragma solidity 0.4.25;

contract digitalNotary
{
    
  function bug_tmstmp28 () public payable {
	uint pastBlockTime_tmstmp28; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp28); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp28 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }
  address private manager;
    
  address winner_tmstmp27;
function play_tmstmp27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp27 = msg.sender;}}
  bool private contractactive;
    
  address winner_tmstmp26;
function play_tmstmp26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp26 = msg.sender;}}
  uint private hashfee;
    
  function bug_tmstmp25() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
  uint private changehashownerfee;
    
    struct HashRegistration 
    {
        address owner;
        uint registrationtime;
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
  mapping(bytes32 => HashRegistration[]) HashList;
    
  address winner_tmstmp23;
function play_tmstmp23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp23 = msg.sender;}}
  uint private HashListLength;
    
  uint256 bugv_tmstmp2 = block.timestamp;
  event  RegisterHashEvent(address indexed msgsender, bytes32 indexed hash, uint timestamp);
    
  uint256 bugv_tmstmp1 = block.timestamp;
  event  ChangeHashOwnershipEvent(address indexed msgsender, address indexed newowner, bytes32 indexed hash, uint timestamp);
    
    constructor() public
    {

        manager = msg.sender;
        
        contractactive = true;
        
        hashfee = 5000000000000000;
        
        changehashownerfee = 25000000000000000;
        
        HashListLength = 0;
        
    }
address winner_tmstmp22;
function play_tmstmp22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp22 = msg.sender;}}
    
    modifier onlyManager()
    {
        require(msg.sender == manager);
        _;
    }
uint256 bugv_tmstmp3 = block.timestamp;
    
    
    function gethashfee() external view returns(uint)
    {
        return hashfee;
    }
function bug_tmstmp21() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    
    function sethashfee(uint newfee) external onlyManager
    {
        require(newfee >= 0);
        
        hashfee = newfee;
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
    
    function getchangehashownerfee() external view returns(uint)
    {
        return changehashownerfee;
    }
address winner_tmstmp2;
function play_tmstmp2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp2 = msg.sender;}}
    
     function setchangehashownerfee(uint newfee) external onlyManager
    {
        require(newfee >= 0);
        
        changehashownerfee = newfee;
    }
address winner_tmstmp19;
function play_tmstmp19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp19 = msg.sender;}}
    
    function getcontractactive() external view returns (bool)
    {
        return contractactive;
    }
address winner_tmstmp18;
function play_tmstmp18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp18 = msg.sender;}}
    
    function setcontractactive(bool contactive) external onlyManager
    {
        contractactive = contactive;
    }
function bug_tmstmp17() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    
     function getmanager() external view returns(address)
    {
        return manager;
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
    
    function setmanager(address newmngr) external onlyManager
    {
        require(newmngr.balance > 0);
        manager = newmngr;
    }
address winner_tmstmp15;
function play_tmstmp15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp15 = msg.sender;}}
    
    function getcontractbalance() public view returns(uint)
    {
       
        return address(this).balance;
    }
address winner_tmstmp14;
function play_tmstmp14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp14 = msg.sender;}}
    
    function transfercontractbalance() external onlyManager
    {
        uint cb = address(this).balance;
        
        require(cb > 0);
        
        manager.transfer(cb);
    }
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    
    function getHashOwnersCount(bytes32 hash) public view returns(uint)
    {
        return HashList[hash].length;
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
    
    function getNumberofHashesRegistered() external view returns(uint)
    {
        return HashListLength;
    }
address winner_tmstmp11;
function play_tmstmp11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp11 = msg.sender;}}
    
     function getHashDetails(bytes32 hash,uint indx) external view returns (address,uint)
    {

        uint owncount = getHashOwnersCount(hash);
        require(owncount > 0);
        require(indx < owncount);
        
        return (HashList[hash][indx].owner,HashList[hash][indx].registrationtime);
    }
address winner_tmstmp10;
function play_tmstmp10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp10 = msg.sender;}}
    
    function registerHash(bytes32 hash) external payable
    {
      
        require(contractactive == true);
        require(getHashOwnersCount(hash) == 0);
        require(msg.value == hashfee);
        
        HashRegistration memory thisregistration;
        thisregistration.owner = msg.sender;
        thisregistration.registrationtime = now;
        
        HashList[hash].push(thisregistration);
        
        HashListLength++;
        
        emit RegisterHashEvent(thisregistration.owner, hash, thisregistration.registrationtime);
        
    }
function bug_tmstmp1() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    
    function changeHashOwnership(bytes32 hash, address newowner) external payable
    {
        
        require(contractactive == true);
        uint owncount = getHashOwnersCount(hash);
        require(owncount > 0);
        require(msg.sender == HashList[hash][owncount - 1].owner); 
        require(msg.value == changehashownerfee);
        
        HashRegistration memory thisregistration;
        thisregistration.owner = newowner;
        thisregistration.registrationtime = now;
        
        HashList[hash].push(thisregistration);
        
        emit ChangeHashOwnershipEvent(msg.sender, thisregistration.owner, hash, thisregistration.registrationtime);
    }
uint256 bugv_tmstmp5 = block.timestamp;
    
    function () external
    {
     	
    }
uint256 bugv_tmstmp4 = block.timestamp;
}
