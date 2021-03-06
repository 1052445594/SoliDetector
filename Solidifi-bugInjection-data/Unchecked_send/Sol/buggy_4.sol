
pragma solidity >= 0.5.0 < 0.6.0;


/**
 * @title PHO token - for Game coin sale
 * @author Willy Lee
 */


/**
 * @title ERC20 Standard Interface
 */
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}


/**
 * @title Token implementation
 */
contract PHO is IERC20 {
  function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  string public name = "PHO";
  function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  string public symbol = "PHO";
  function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint8 public decimals = 18;
    
  function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 saleAmount;
  function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 evtAmount;
  function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint256 teamAmount;

  function unhandledsend_unchk2(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  uint256 _totalSupply;
  function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  mapping(address => uint256) balances;

  function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address public owner;
  function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address public sale;
  function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  address public evt;
  function bug_unchk15(address payable addr) public
      {addr.send (42 ether); } //Unchecked_send bug
  address public team;
    
    modifier isOwner {
        require(owner == msg.sender);
        _;
    }
    
    constructor() public {
        owner   = msg.sender;
        sale    = 0x071F73f4D0befd4406901AACE6D5FFD6D297c561;
        evt     = 0x76535ca5BF1d33434A302e5A464Df433BB1F80F6;
        team    = 0xD7EC5D8697e4c83Dc33D781d19dc2910fB165D5C;

        saleAmount    = toWei(1000000000);  //1,000,000,000
        evtAmount     = toWei(200000000);   //  200,000,000
        teamAmount    = toWei(800000000);   //  800,000,000
        _totalSupply  = toWei(2000000000);  //2,000,000,000

        require(_totalSupply == saleAmount + evtAmount + teamAmount );
        
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, balances[owner]);
        
        transfer(sale, saleAmount);
        transfer(evt, evtAmount);
        transfer(team, teamAmount);
        require(balances[owner] == 0);
    }
function unhandledsend_unchk14(address payable callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }

    function balanceOf(address who) public view returns (uint256) {
        return balances[who];
    }
function my_func_uncheck12(address payable dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
    
    function transfer(address to, uint256 value) public returns (bool success) {
        require(msg.sender != to);
        require(value > 0);
        
        require( balances[msg.sender] >= value );
        require( balances[to] + value >= balances[to] );

        if(msg.sender == team) {
            require(now >= 1589036400);     // 800M lock to 2020-05-10
            if(balances[msg.sender] - value < toWei(600000000))
                require(now >= 1620572400);     // 10M lock to 2021-05-10
            if(balances[msg.sender] - value < toWei(400000000))
                require(now >= 1652108400);     // 10M lock to 2022-05-10
            if(balances[msg.sender] - value < toWei(200000000))
                require(now >= 1683644400);     // 10M lock to 2023-05-10
        }

        balances[msg.sender] -= value;
        balances[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }
function my_func_unchk11(address payable dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
    
    function burnCoins(uint256 value) public {
        require(balances[msg.sender] >= value);
        require(_totalSupply >= value);
        
        balances[msg.sender] -= value;
        _totalSupply -= value;

        emit Transfer(msg.sender, address(0), value);
    }
function cash_unchk10(uint roundIndex, uint subpotIndex,address payable winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}


    /** @dev private function
     */

    function toWei(uint256 value) private view returns (uint256) {
        return value * (10 ** uint256(decimals));
    }
function callnotchecked_unchk1(address payable callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
}