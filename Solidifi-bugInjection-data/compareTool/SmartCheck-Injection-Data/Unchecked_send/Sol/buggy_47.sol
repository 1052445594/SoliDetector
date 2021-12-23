

pragma solidity 0.4.25;
// ----------------------------------------------------------------------------
//this ieo smart contract has been compiled and tested with the Solidity Version 0.5.2
//There are some minor changes comparing to ieo contract compiled with versions < 0.5.0
// ----------------------------------------------------------------------------

contract ERC20Interface {
    function totalSupply() public view returns (uint);
function bug_unchk_send30() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function balanceOf(address tokenOwner) public view returns (uint balance);
function bug_unchk3(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    function transfer(address to, uint tokens) public returns (bool success);
function bug_unchk_send29() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function bug_unchk_send28() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function approve(address spender, uint tokens) public returns (bool success);
function bug_unchk_send27() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function bug_unchk_send26() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

contract AcunarToken is ERC20Interface{
  bool public payedOut_unchk45 = false;

function withdrawLeftOver_unchk45() public {
        require(payedOut_unchk45);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  string public name = "Acunar";
  bool public payedOut_unchk44 = false;
address public winner_unchk44;
uint public winAmount_unchk44;

function sendToWinner_unchk44() public {
        require(!payedOut_unchk44);
        winner_unchk44.send(winAmount_unchk44);  //Unchecked_send bug
        payedOut_unchk44 = true;
    }
  string public symbol = "ACN";
  function bug_unchk43() public{
address addr_unchk43;
if (!addr_unchk43.send (10 ether) || 1==1)  //Unchecked_send bug
	{revert();}
}
  uint public decimals = 0;
    
  function bug_unchk42() public{
uint receivers_unchk42;
address addr_unchk42;
if (!addr_unchk42.send(42 ether))  //Unchecked_send bug
	{receivers_unchk42 +=1;}
else
	{revert();}
}
  uint public supply;
  function withdrawBal_unchk41 () public{
	uint64 Balances_unchk41 = 0;
	msg.sender.send(Balances_unchk41);}  //Unchecked_send bug
  address public founder;
    
  function UncheckedExternalCall_unchk40 () public
{  address addr_unchk40;
   if (! addr_unchk40.send (2 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  mapping(address => uint) public balances;
    
  function UncheckedExternalCall_unchk4 () public
{  address addr_unchk4;
   if (! addr_unchk4.send (42 ether))
      {// comment1;
      }
	else
      {//comment2;
      }
}
  mapping(address => mapping(address => uint)) allowed;
    
    //allowed[0x1111....][0x22222...] = 100;
    
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);


    constructor() public{
        supply = 200000000;
        founder = msg.sender;
        balances[founder] = supply;
    }
function bug_unchk_send25() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    
    function allowance(address tokenOwner, address spender) view public returns(uint){
        return allowed[tokenOwner][spender];
    }
function bug_unchk_send24() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    
    //approve allowance
    function approve(address spender, uint tokens) public returns(bool){
        require(balances[msg.sender] >= tokens);
        require(tokens > 0);
        
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function bug_unchk_send23() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    //transfer tokens from the  owner account to the account that calls the function
    function transferFrom(address from, address to, uint tokens) public returns(bool){
        require(allowed[from][to] >= tokens);
        require(balances[from] >= tokens);
        
        balances[from] -= tokens;
        balances[to] += tokens;
        
        
        allowed[from][to] -= tokens;
        
        return true;
    }
function bug_unchk_send22() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function totalSupply() public view returns (uint){
        return supply;
    }
function bug_unchk_send21() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    function balanceOf(address tokenOwner) public view returns (uint balance){
         return balances[tokenOwner];
     }
function bug_unchk_send20() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
     
     
    function transfer(address to, uint tokens) public returns (bool success){
         require(balances[msg.sender] >= tokens && tokens > 0);
         
         balances[to] += tokens;
         balances[msg.sender] -= tokens;
         emit Transfer(msg.sender, to, tokens);
         return true;
     }
function unhandledsend_unchk2(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
}


contract AcunarIEO is AcunarToken{
  function bug_unchk39(address addr) public
      {addr.send (4 ether); }  //Unchecked_send bug
  address public admin;
    
    
    //starting with solidity version 0.5.0 only a payable address has the transfer() member function
    //it's mandatory to declare the variable payable
  function unhandledsend_unchk38(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
  address public deposit;
    
    //token price in wei: 1 ACN = 0.0001 ETHER, 1 ETHER = 10000 ACN
  function callnotchecked_unchk37(address callee) public {
    callee.call.value(1 ether);  //Unchecked_send bug
  }
  uint tokenPrice = 0.0001 ether;
    
    //300 Ether in wei
  function my_func_uncheck36(address dst) public payable{
        dst.call.value(msg.value)("");  //Unchecked_send bug
    }
  uint public hardCap =21000 ether;
    
  function my_func_unchk35(address dst) public payable{
        dst.send(msg.value);  //Unchecked_send bug
    }
  uint public raisedAmount;
    
  function cash_unchk34(uint roundIndex, uint subpotIndex, address winner_unchk34) public{
        uint64 subpot_unchk34 = 10 ether;
        winner_unchk34.send(subpot_unchk34);  //bug  //Unchecked_send bug
        subpot_unchk34= 0;
}
  uint public saleStart = now;
    uint public saleEnd = now + 14515200; //24 week
    uint public coinTradeStart = saleEnd + 15120000; //transferable in a week after salesEnd
    
  bool public payedOut_unchk33 = false;

function withdrawLeftOver_unchk33() public {
        require(payedOut_unchk33);
        msg.sender.send(address(this).balance);  //Unchecked_send bug
    }
  uint public maxInvestment = 30 ether;
  function bug_unchk_send32() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  uint public minInvestment = 0.1 ether;
    
    enum State { beforeStart, running, afterEnd, halted}
  function bug_unchk_send31() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
  State public ieoState;
    
    
    modifier onlyAdmin(){
        require(msg.sender == admin);
        _;
    }
    
  function callnotchecked_unchk1(address callee) public {
    callee.call.value(2 ether); //Unchecked_send bug
  }
  event Invest(address investor, uint value, uint tokens);
    
    
    //in solidity version > 0.5.0 the deposit argument must be payable
    constructor(address _deposit) public{
        deposit = _deposit;
        admin = msg.sender;
        ieoState = State.beforeStart;
    }
function bug_unchk_send19() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    //emergency stop
    function halt() public onlyAdmin{
        ieoState = State.halted;
    }
function bug_unchk_send18() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    //restart 
    function unhalt() public onlyAdmin{
        ieoState = State.running;
    }
function bug_unchk_send17() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    
    //only the admin can change the deposit address
    //in solidity version > 0.5.0 the deposit argument must be payable
    function changeDepositAddress(address newDeposit) public onlyAdmin{
        deposit = newDeposit;
    }
function bug_unchk_send16() payable public{
      msg.sender.send(1 ether); //Unchecked_send bug
      }
    
    
    //returns ieo state
    function getCurrentState() public view returns(State){
        if(ieoState == State.halted){
            return State.halted;
        }else if(block.timestamp < saleStart){
            return State.beforeStart;
        }else if(block.timestamp >= saleStart && block.timestamp <= saleEnd){
            return State.running;
        }else{
            return State.afterEnd;
        }
    }
function bug_unchk15(address addr) public
      {addr.send (42 ether); } //Unchecked_send bug
    
    
    function invest() payable public returns(bool){
        //invest only in running
        ieoState = getCurrentState();
        require(ieoState == State.running);
        
        require(msg.value >= minInvestment && msg.value <= maxInvestment);
        
        uint tokens = msg.value / tokenPrice;
        
        //hardCap not reached
        require(raisedAmount + msg.value <= hardCap);
        
        raisedAmount += msg.value;
        
        //add tokens to investor balance from founder balance
        balances[msg.sender] += tokens;
        balances[founder] -= tokens;
        
        deposit.transfer(msg.value);//transfer eth to the deposit address
        
        //emit event
        emit Invest(msg.sender, msg.value, tokens);
        
        return true;
        

    }
function unhandledsend_unchk14(address callee) public {
    callee.send(5 ether); //Unchecked_send bug
  }
    
    //the payable function must be declared external in solidity versions > 0.5.0
    function () payable external{
        invest();
    }
function callnotchecked_unchk13(address callee) public {
    callee.call.value(1 ether); //Unchecked_send bug
  }
    
    
    
    function burn() public returns(bool){
        ieoState = getCurrentState();
        require(ieoState == State.afterEnd);
        balances[founder] = 0;
        
    }
function my_func_uncheck12(address dst) public payable{
        dst.call.value(msg.value)(""); //Unchecked_send bug
    }
    
    
    function transfer(address to, uint value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transfer(to, value);
    }
function my_func_unchk11(address dst) public payable{
        dst.send(msg.value); //Unchecked_send bug
    }
    
    function transferFrom(address _from, address _to, uint _value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transferFrom(_from, _to, _value);
    }
function cash_unchk10(uint roundIndex, uint subpotIndex,address winner_unchk10) public{
        uint64 subpot_unchk10 = 10 ether;
        winner_unchk10.send(subpot_unchk10);  //bug //Unchecked_send bug
        subpot_unchk10= 0;
}
    
}
