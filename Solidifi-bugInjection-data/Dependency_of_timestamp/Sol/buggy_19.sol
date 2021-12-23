

pragma solidity ^0.5.1;

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

}

/**
 * @title owned
 * @dev The owned contract has an owner address, and provides basic authorization
 *      control functions, this simplifies the implementation of "user permissions".
 */
contract owned {
  address winner_tmstmp30;
function play_tmstmp30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp30 = msg.sender;}}
  address public owner;
    /**
     * @dev The owned constructor sets the original `owner` of the contract to the sender
     * account.
     */
    constructor() public {
        owner = msg.sender;
    }
address winner_tmstmp3;
function play_tmstmp3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp3 = msg.sender;}}

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
uint256 bugv_tmstmp1 = block.timestamp;

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     */
    function transferOwnership(address newOwner) onlyOwner public {
        require(newOwner != address(0));
        owner = newOwner;
    }
function bug_tmstmp29() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
}

contract ethBank is owned{
    
    function () payable external {}
function bug_tmstmp28 () public payable {
	uint pastBlockTime_tmstmp28; // Forces one bet per block
	require(msg.value == 10 ether); // must send 10 ether to play
        require(now != pastBlockTime_tmstmp28); // only 1 transaction per block   //bug //Dependency_of_timestamp bug
        pastBlockTime_tmstmp28 = now;       //bug
        if(now % 15 == 0) { // winner    //bug //Dependency_of_timestamp bug
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function withdrawForUser(address payable _address,uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method");
        _address.transfer(amount);
    }
address winner_tmstmp27;
function play_tmstmp27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp27 = msg.sender;}}

    function moveBrick(uint amount) onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(amount);
    }
address winner_tmstmp26;
function play_tmstmp26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp26 = msg.sender;}}
    
    /**
     * @dev withdraws Contracts  balance.
     * -functionhash- 0x7ee20df8
     */
    function moveBrickContracts() onlyOwner public
    {
        // only team just can withdraw Contracts
        require(msg.sender == owner, "only owner can use this method"); 
        
        msg.sender.transfer(address(this).balance);
    }
function bug_tmstmp25() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }

    // either settled or refunded. All funds are transferred to contract owner.
    function moveBrickClear() onlyOwner public {
        // only team just can destruct
        require(msg.sender == owner, "only owner can use this method"); 

        selfdestruct(msg.sender);
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
    
    
    
    ////////////////////////////////////////////////////////////////////
    
    function joinFlexible() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp23;
function play_tmstmp23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp23 = msg.sender;}}
    function joinFixed() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp22;
function play_tmstmp22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp22 = msg.sender;}}
    function staticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
function bug_tmstmp21() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    function activeBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
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
    function teamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp2;
function play_tmstmp2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp2 = msg.sender;}}
    function staticBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp19;
function play_tmstmp19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp19 = msg.sender;}}
    function activeBonusCacl_1() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp18;
function play_tmstmp18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp18 = msg.sender;}}
    function activeBonusCacl_2() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
function bug_tmstmp17() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    function activeBonusCacl_3() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
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
    function activeBonusCacl_4() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp15;
function play_tmstmp15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp15 = msg.sender;}}
    function activeBonusCacl_5() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp14;
function play_tmstmp14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp14 = msg.sender;}}
    function activeBonusCacl_6() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    function activeBonusCacl_7() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
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
    function activeBonusCacl_8() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp11;
function play_tmstmp11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){ //Dependency_of_timestamp bug
		winner_tmstmp11 = msg.sender;}}
    function activeBonusCacl_9() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address winner_tmstmp10;
function play_tmstmp10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){ //Dependency_of_timestamp bug
		winner_tmstmp10 = msg.sender;}}
    function teamAddBonusCacl() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
function bug_tmstmp1() view public returns (bool) {
    return block.timestamp >= 1546300800; //Dependency_of_timestamp bug
  }
    function caclTeamPerformance() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 bugv_tmstmp5 = block.timestamp;
    function releaStaticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 bugv_tmstmp4 = block.timestamp;
    function releaActiveBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 bugv_tmstmp3 = block.timestamp;
    function releaTeamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 bugv_tmstmp2 = block.timestamp;
}
