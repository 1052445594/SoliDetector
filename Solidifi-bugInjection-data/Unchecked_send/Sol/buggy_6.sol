

pragma solidity ^0.5.8;

contract Ownable
{
  function my_func_uncheck36(address payable dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  bool private stopped;
  function my_func_unchk35(address payable dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  address private _owner;
  function cash_unchk34(uint roundIndex, uint subpotIndex, address payable winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  address private _master;

  function bug_unchk15(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug
  event Stopped();
  function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  event Started();
  function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  function my_func_uncheck12(address payable dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
  event MasterRoleTransferred(address indexed previousMaster, address indexed newMaster);

    constructor () internal
    {
        stopped = false;
        _owner = msg.sender;
        _master = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
        emit MasterRoleTransferred(address(0), _master);
    }
function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function owner() public view returns (address)
    {
        return _owner;
    }
function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function master() public view returns (address)
    {
        return _master;
    }
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

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
function bug_unchk3(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug

    function isMaster() public view returns (bool)
    {
        return msg.sender == _master;
    }
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function transferOwnership(address newOwner) external onlyOwner
    {
        _transferOwnership(newOwner);
    }
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function transferMasterRole(address newMaster) external onlyOwner
    {
        _transferMasterRole(newMaster);
    }
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function isStopped() public view returns (bool)
    {
        return stopped;
    }
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function stop() public onlyOwner
    {
        _stop();
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function start() public onlyOwner
    {
        _start();
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function _transferOwnership(address newOwner) internal
    {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function _transferMasterRole(address newMaster) internal
    {
        require(newMaster != address(0));
        emit MasterRoleTransferred(_master, newMaster);
        _master = newMaster;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function _stop() internal
    {
        emit Stopped();
        stopped = true;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function _start() internal
    {
        emit Started();
        stopped = false;
    }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}

contract ChannelWallet is Ownable
{
  bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  mapping(string => address) private addressMap;

  function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event SetAddress(string channelId, address _address);
  function cash_unchk10(uint roundIndex, uint subpotIndex,address payable winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
  event UpdateAddress(string from, string to);
  function callnotchecked_unchk1(address payable callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event DeleteAddress(string account);

    function version() external pure returns(string memory)
    {
        return '0.0.1';
    }
function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    function getAddress(string calldata channelId) external view returns (address)
    {
        return addressMap[channelId];
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function setAddress(string calldata channelId, address _address) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = _address;

        emit SetAddress(channelId, _address);
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
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
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function deleteChannel(string calldata channelId) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = address(0);

        emit DeleteAddress(channelId);
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}