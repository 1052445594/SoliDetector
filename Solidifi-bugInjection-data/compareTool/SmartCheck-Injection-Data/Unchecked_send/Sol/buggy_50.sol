
pragma solidity 0.4.25;

contract digitalNotary
{
    
  function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address private manager;
    
  function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  bool private contractactive;
    
  function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
  uint private hashfee;
    
  function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint private changehashownerfee;
    
    struct HashRegistration 
    {
        address owner;
        uint registrationtime;
    }
    
  function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping(bytes32 => HashRegistration[]) HashList;
    
  function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint private HashListLength;
    
  function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event  RegisterHashEvent(address indexed msgsender, bytes32 indexed hash, uint timestamp);
    
  function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event  ChangeHashOwnershipEvent(address indexed msgsender, address indexed newowner, bytes32 indexed hash, uint timestamp);
    
    constructor() public
    {

        manager = msg.sender;
        
        contractactive = true;
        
        hashfee = 5000000000000000;
        
        changehashownerfee = 25000000000000000;
        
        HashListLength = 0;
        
    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    modifier onlyManager()
    {
        require(msg.sender == manager);
        _;
    }
    
    
    function gethashfee() external view returns(uint)
    {
        return hashfee;
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function sethashfee(uint newfee) external onlyManager
    {
        require(newfee >= 0);
        
        hashfee = newfee;
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function getchangehashownerfee() external view returns(uint)
    {
        return changehashownerfee;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
     function setchangehashownerfee(uint newfee) external onlyManager
    {
        require(newfee >= 0);
        
        changehashownerfee = newfee;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function getcontractactive() external view returns (bool)
    {
        return contractactive;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function setcontractactive(bool contactive) external onlyManager
    {
        contractactive = contactive;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
     function getmanager() external view returns(address)
    {
        return manager;
    }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
    function setmanager(address newmngr) external onlyManager
    {
        require(newmngr.balance > 0);
        manager = newmngr;
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function getcontractbalance() public view returns(uint)
    {
       
        return address(this).balance;
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function transfercontractbalance() external onlyManager
    {
        uint cb = address(this).balance;
        
        require(cb > 0);
        
        manager.transfer(cb);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function getHashOwnersCount(bytes32 hash) public view returns(uint)
    {
        return HashList[hash].length;
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function getNumberofHashesRegistered() external view returns(uint)
    {
        return HashListLength;
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    
     function getHashDetails(bytes32 hash,uint indx) external view returns (address,uint)
    {

        uint owncount = getHashOwnersCount(hash);
        require(owncount > 0);
        require(indx < owncount);
        
        return (HashList[hash][indx].owner,HashList[hash][indx].registrationtime);
    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
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
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
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
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
    
    function () external
    {
     	
    }
function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
}
