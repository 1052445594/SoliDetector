

pragma solidity ^0.5.8;

contract Ownable
{
  function callnotchecked_unchk37(address payable callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
  bool private stopped;
  function my_func_uncheck36(address payable dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  address private _owner;
  function my_func_unchk35(address payable dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
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

contract AccountWallet is Ownable
{
  function cash_unchk34(uint roundIndex, uint subpotIndex, address payable winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  mapping(string => string) private btc;
  bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  mapping(string => address) private eth;

  function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
  event SetAddress(string account, string btcAddress, address ethAddress);
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
        return '1.0.0';
    }
function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }

    function getAddress(string calldata account) external view returns (string memory, address)
    {
        return (btc[account], eth[account]);
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function setAddress(string calldata account, string calldata btcAddress, address ethAddress) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = btcAddress;
        eth[account] = ethAddress;

        emit SetAddress(account, btcAddress, ethAddress);
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function updateAccount(string calldata from, string calldata to) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(from).length > 0);
        require(bytes(to).length > 0);

        btc[to] = btc[from];
        eth[to] = eth[from];

        btc[from] = '';
        eth[from] = address(0);

        emit UpdateAddress(from, to);
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    function deleteAccount(string calldata account) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = '';
        eth[account] = address(0);

        emit DeleteAddress(account);
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
}