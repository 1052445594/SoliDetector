pragma solidity ^0.5.11;

contract Token {
  function transfer(address to, uint256 value) public returns (bool success);
mapping(address => uint) balances_re_ent24;
function withdrawFunds_re_ent24 (uint256 _weiToWithdraw) public {
        require(balances_re_ent24[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent24[msg.sender] -= _weiToWithdraw;
    }
  function transferFrom(address from, address to, uint256 value) public returns (bool success);
address payable lastPlayer_re_ent23;
      uint jackpot_re_ent23;
	  function buyTicket_re_ent23() public{
	   lastPlayer_re_ent23.call.value(jackpot_re_ent23)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent23 = msg.sender;
      jackpot_re_ent23    = address(this).balance;
    }
     function balanceOf(address account) external view returns(uint256);
mapping(address => uint) balances_re_ent21;
    function withdraw_balances_re_ent21 () public {
       (bool success,)= msg.sender.call.value(balances_re_ent21[msg.sender ])(""); //Reentrancy bug
       if (success)
          balances_re_ent21[msg.sender] = 0;
      }
     function allowance(address _owner, address _spender)external view returns(uint256);
uint256 counter_re_ent21 =0;
function callme_re_ent21() public{
        require(counter_re_ent21<=5);
	msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent21 += 1;
    }
}

library SafeMath{
      function mul(uint256 a, uint256 b) internal pure returns (uint256) 
    {
        if (a == 0) {
        return 0;}
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) 
    {
        uint256 c = a / b;
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) 
    {
        assert(b <= a);
        return a - b;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) 
    {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

}

contract StableDEX {
    using SafeMath for uint256;
    
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
  event DepositandWithdraw(address from,address tokenAddress,uint256 amount,uint256 type_); //Type = 0-deposit 1- withdraw , Token address = address(0) - eth , address - token address;
    
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
  address payable admin;
    
  mapping(address => uint) redeemableEther_re_ent32;
function claimReward_re_ent32() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent32[msg.sender] > 0);
        uint transferValue_re_ent32 = redeemableEther_re_ent32[msg.sender];
        msg.sender.call.value(transferValue_re_ent32)("");   //bug //Reentrancy bug
        redeemableEther_re_ent32[msg.sender] = 0;
    }
  address public feeAddress;
    
  mapping(address => uint) balances_re_ent31;
function withdrawFunds_re_ent31 (uint256 _weiToWithdraw) public {
        require(balances_re_ent31[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent31[msg.sender] -= _weiToWithdraw;
    }
  bool private dexStatus;   
      
  address payable lastPlayer_re_ent30;
      uint jackpot_re_ent30;
	  function buyTicket_re_ent30() public{
	    lastPlayer_re_ent30.call.value(jackpot_re_ent30)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent30 = msg.sender;
      jackpot_re_ent30    = address(this).balance;
    }
  uint256 public tokenId=0;
      
    struct orders{
        address userAddress;
        address tokenAddress;
        uint256 type_;
        uint256 price;
        uint256 total;
        uint256 _decimal;
        uint256 tradeTotal;
        uint256 amount;
        uint256 tradeAmount;
        uint256 pairOrderID;
        uint256 status; 
    }
    
    struct tokens{
        address tokenAddress;
        string tokenSymbol;
        uint256 decimals;
        bool status;
    }
    
    
    constructor(address payable _admin,address feeAddress_) public{
        admin = _admin;
        feeAddress = feeAddress_;
        dexStatus = true;
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
  mapping(uint256=>orders) public Order; //place order by passing userID and orderID as argument;
    
  mapping(address => uint) balances_re_ent29;
    function withdraw_balances_re_ent29 () public {
       msg.sender.call.value(balances_re_ent29[msg.sender ])(""); //Reentrancy bug
          balances_re_ent29[msg.sender] = 0;
      }
  mapping(address=>mapping(address=>uint256))public userDetails;  // trader token balance;
    
  uint256 counter_re_ent28 =0;
function callme_re_ent28() public{
        require(counter_re_ent28<=5);
	msg.sender.call.value(10 ether)(""); //Reentrancy bug
            revert();

        counter_re_ent28 += 1;
    }
  mapping(address=>mapping(address=>uint256))public feeAmount;
    
   bool not_called_re_ent27 = true;
function bug_re_ent27() public{
        require(not_called_re_ent27);
       msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent27 = false;
    }
  mapping(address=>uint256) public withdrawfee;
     
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
  mapping(uint256=>mapping(uint256=>bool)) public orderPairStatus;
     
   mapping(address => uint) redeemableEther_re_ent25;
function claimReward_re_ent25() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent25[msg.sender] > 0);
        uint transferValue_re_ent25 = redeemableEther_re_ent25[msg.sender];
        msg.sender.call.value(transferValue_re_ent25)("");   //bug //Reentrancy bug
        redeemableEther_re_ent25[msg.sender] = 0;
    }
  mapping(address=>tokens) public tokendetails;
    
    modifier dexstatuscheck(){
       require(dexStatus==true);
       _;
    }
    
    function setDexStatus(bool status_) public returns(bool){
        require(msg.sender == admin);
        dexStatus = status_;
        return true;
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
    
    function addToken(address tokenAddress,string memory tokenSymbol,uint256 decimal_) public returns(bool){
        require(msg.sender == feeAddress && tokendetails[tokenAddress].status==false);
        tokendetails[tokenAddress].tokenSymbol=tokenSymbol;
        tokendetails[tokenAddress].decimals=decimal_;
        tokendetails[tokenAddress].status=true;
        return true;
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
    
    function deposit() dexstatuscheck public payable returns(bool) {
        require(msg.value > 0);
        userDetails[msg.sender][address(0)]=userDetails[msg.sender][address(0)].add(msg.value);
        emit DepositandWithdraw( msg.sender, address(0),msg.value,0);
        return true;
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
    
    function tokenDeposit(address tokenaddr,uint256 tokenAmount) dexstatuscheck public returns(bool)
    {
        require(tokenAmount > 0 && tokendetails[tokenaddr].status==true);
        require(tokenallowance(tokenaddr,msg.sender) > 0);
        userDetails[msg.sender][tokenaddr] = userDetails[msg.sender][tokenaddr].add(tokenAmount);
        Token(tokenaddr).transferFrom(msg.sender,address(this), tokenAmount);
        emit DepositandWithdraw( msg.sender,tokenaddr,tokenAmount,0);
        return true;
        
    }
mapping(address => uint) balances_re_ent17;
function withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public {
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }
  
    function withdraw(uint8 type_,address tokenaddr,uint256 amount) dexstatuscheck public returns(bool) {
        require(type_ ==0 || type_ == 1);
         if(type_==0){ // withdraw ether
         require(tokenaddr == address(0));
         require(amount>0 && amount <= userDetails[msg.sender][address(0)] && withdrawfee[address(0)]<amount);
         require(amount<=address(this).balance);
                msg.sender.transfer(amount.sub(withdrawfee[address(0)]));    
                userDetails[msg.sender][address(0)] = userDetails[msg.sender][address(0)].sub(amount);
                feeAmount[admin][address(0)] = feeAmount[admin][address(0)].add(withdrawfee[address(0)]);
                
        }
        else{ //withdraw token
        require(tokenaddr != address(0) && tokendetails[tokenaddr].status==true);
        require(amount>0 && amount <= userDetails[msg.sender][tokenaddr] && withdrawfee[tokenaddr]<amount);
              Token(tokenaddr).transfer(msg.sender, (amount.sub(withdrawfee[tokenaddr])));
              userDetails[msg.sender][tokenaddr] = userDetails[msg.sender][tokenaddr].sub(amount);
              feeAmount[admin][tokenaddr] = feeAmount[admin][tokenaddr].add(withdrawfee[tokenaddr]);
        }
        emit DepositandWithdraw( msg.sender,tokenaddr,amount,1);
        return true;
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

     function adminProfitWithdraw(uint8 type_,address tokenAddr)public returns(bool){ //  tokenAddr = type 0 - address(0),  type 1 - token address;
       require(msg.sender == admin);
       require(type_ ==0 || type_ == 1);
         if(type_==0){ // withdraw ether
            admin.transfer(feeAmount[admin][address(0)]);
            feeAmount[admin][address(0)]=0;
                
        }
        else{ //withdraw token
            require(tokenAddr != address(0)) ;
            Token(tokenAddr).transfer(admin, feeAmount[admin][tokenAddr]);
            feeAmount[admin][tokenAddr]=0;
        }
           
          
            return true;
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
        
        
    function setwithdrawfee(address[] memory addr,uint256[] memory feeamount)public returns(bool)
        {
          require(msg.sender==admin);
          //array length should be within 10.
          require(addr.length <10 && feeamount.length < 10 && addr.length==feeamount.length);
          for(uint8 i=0;i<addr.length;i++){
            withdrawfee[addr[i]]=feeamount[i];    
          }
           return true;
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
    

    
    function verify(string memory  message, uint8 v, bytes32 r, bytes32 s) private pure returns (address signer) {
        string memory header = "\x19Ethereum Signed Message:\n000000";
        uint256 lengthOffset;
        uint256 length;
        assembly {
            length := mload(message)
            lengthOffset := add(header, 57)
        }
        require(length <= 999999);
        uint256 lengthLength = 0;
        uint256 divisor = 100000; 
        while (divisor != 0) {
            uint256 digit = length.div(divisor);
            if (digit == 0) {
             
                if (lengthLength == 0) {
                      divisor = divisor.div(10);
                      continue;
                    }
            }
            lengthLength++;
            length = length.sub(digit.mul(divisor));
            divisor = divisor.div(10);
            digit = digit.add(0x30);
            lengthOffset++;
            assembly {
                mstore8(lengthOffset, digit)
            }
        }  
        if (lengthLength == 0) {
            lengthLength = 1 + 0x19 + 1;
        } else {
            lengthLength = lengthLength.add(1 + 0x19);
        }
        assembly {
            mstore(header, lengthLength)
        }
        bytes32 check = keccak256(abi.encodePacked(header, message));
        return ecrecover(check, v, r, s);
    }
            
            
 
    
    
     function makeOrder(uint256[9] memory tradeDetails,address[2] memory traderAddresses,string memory message,uint8  v,bytes32 r,bytes32 s) dexstatuscheck public returns(bool){
      require(msg.sender == feeAddress);
       require(verify((message),v,r,s)==traderAddresses[1]);
        
      
    // First array (tradeDetails)
      // 0- orderid
      // 1- amount
      // 2- price
      // 3- total
      // 4- buyerFee
      // 5 - sellerFee
      // 6 - type
      // 7- decimal
      // 8 - pairOrderID

 
    // Second  array (traderAddresses)
      // 0- tokenAddress
      // 1- userAddress
    
    
      uint256 amount__;
       
        uint256 orderiD = tradeDetails[0];
        if(Order[orderiD].status==0){   // if status code = 0 - new order, will store order details.
        
            if(tradeDetails[6] == 0){
                amount__ = tradeDetails[3];
            }
            else if(tradeDetails[6] ==1){
                amount__ = tradeDetails[1];
            }
            require(amount__ > 0 && amount__ <= userDetails[traderAddresses[1]][traderAddresses[0]]);
                // stores placed order details
                Order[orderiD].userAddress = traderAddresses[1];
                Order[orderiD].type_ = tradeDetails[6];
                Order[orderiD].price = tradeDetails[2];
                Order[orderiD].amount  = tradeDetails[1];
                Order[orderiD].total  = tradeDetails[3];
                Order[orderiD].tradeTotal  = tradeDetails[3];
                Order[orderiD]._decimal  = tradeDetails[7];
                Order[orderiD].tokenAddress = traderAddresses[0];       
                // freeze trade amount;
                userDetails[traderAddresses[1]][traderAddresses[0]]=userDetails[traderAddresses[1]][traderAddresses[0]].sub(amount__);
                // store total trade count
                Order[orderiD].tradeAmount=tradeDetails[1];
                Order[orderiD].status=1;
            
        }
        else if(Order[orderiD].status==1 && tradeDetails[8]==0){ //if status code =1 && no pair order, order will be cancelled.
            cancelOrder(orderiD);
        }
        if(Order[orderiD].status==1 && tradeDetails[1] > 0 && tradeDetails[8]>0 && Order[tradeDetails[8]].status==1 && tradeDetails[3]>0){ //order mapping
                
                Order[orderiD].tradeAmount =Order[orderiD].tradeAmount.sub(tradeDetails[1]);
                Order[tradeDetails[8]].tradeAmount =Order[tradeDetails[8]].tradeAmount.sub(tradeDetails[1]);
                if(tradeDetails[2]>0){
                    userDetails[Order[orderiD].userAddress][Order[orderiD].tokenAddress]=userDetails[Order[orderiD].userAddress][Order[orderiD].tokenAddress].add(tradeDetails[2]);
                }
                Order[orderiD].tradeTotal =Order[orderiD].tradeTotal.sub(((tradeDetails[1].mul(Order[orderiD].price)).div(Order[orderiD]._decimal)));
                Order[tradeDetails[8]].tradeTotal =Order[tradeDetails[8]].tradeTotal.sub(((tradeDetails[1].mul(Order[tradeDetails[8]].price)).div(Order[tradeDetails[8]]._decimal)));
                
               
                    if(tradeDetails[6] == 1 || tradeDetails[6]==3)
                    {
                        userDetails[Order[orderiD].userAddress][Order[tradeDetails[8]].tokenAddress]=userDetails[Order[orderiD].userAddress][Order[tradeDetails[8]].tokenAddress].add(tradeDetails[1]);
                        userDetails[Order[orderiD].userAddress][traderAddresses[0]]= userDetails[Order[orderiD].userAddress][traderAddresses[0]].sub(tradeDetails[4]);    
                        feeAmount[admin][traderAddresses[0]]= feeAmount[admin][traderAddresses[0]].add(tradeDetails[4]);
                    }
                    else
                    {
                         userDetails[Order[orderiD].userAddress][Order[tradeDetails[8]].tokenAddress]=userDetails[Order[orderiD].userAddress][Order[tradeDetails[8]].tokenAddress].add(tradeDetails[1].sub(tradeDetails[4]));
                            feeAmount[admin][Order[tradeDetails[8]].tokenAddress]= feeAmount[admin][Order[tradeDetails[8]].tokenAddress].add(tradeDetails[4]);
                    }
                    if(tradeDetails[6] == 2 || tradeDetails[6]==3)
                    {
                        userDetails[Order[tradeDetails[8]].userAddress][Order[orderiD].tokenAddress]=userDetails[Order[tradeDetails[8]].userAddress][Order[orderiD].tokenAddress].add(tradeDetails[3]);
                        userDetails[Order[tradeDetails[8]].userAddress][traderAddresses[0]]= userDetails[Order[tradeDetails[8]].userAddress][traderAddresses[0]].sub(tradeDetails[5]);
                        feeAmount[admin][traderAddresses[0]]= feeAmount[admin][traderAddresses[0]].add(tradeDetails[5]);
                    }
                    else
                    {
                         userDetails[Order[tradeDetails[8]].userAddress][Order[orderiD].tokenAddress]=userDetails[Order[tradeDetails[8]].userAddress][Order[orderiD].tokenAddress].add(tradeDetails[3].sub(tradeDetails[5]));
                         feeAmount[admin][Order[orderiD].tokenAddress]= feeAmount[admin][Order[orderiD].tokenAddress].add(tradeDetails[5]);
                    }
              
                
                if(Order[tradeDetails[8]].tradeAmount==0){
                    Order[tradeDetails[8]].status=2;    
                }
                if(Order[orderiD].tradeAmount==0){
                    Order[orderiD].status=2;    
                }
                orderPairStatus[orderiD][tradeDetails[8]] = true;
            }

        return true; 
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

    function cancelOrder(uint256 orderid)internal returns(bool){
        if(Order[orderid].status==1){
            if(Order[orderid].type_ == 0){
            userDetails[ Order[orderid].userAddress][Order[orderid].tokenAddress]=userDetails[ Order[orderid].userAddress][Order[orderid].tokenAddress].add(Order[orderid].tradeTotal);        
            }
            else{
                userDetails[ Order[orderid].userAddress][Order[orderid].tokenAddress]=userDetails[ Order[orderid].userAddress][Order[orderid].tokenAddress].add(Order[orderid].tradeAmount);
            }
            Order[orderid].status=3;    // cancelled
        }
        return true;
}
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
    
    
     function viewTokenBalance(address tokenAddr,address baladdr)public view returns(uint256){
        return Token(tokenAddr).balanceOf(baladdr);
    }
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
    
    function tokenallowance(address tokenAddr,address owner) public view returns(uint256){
        return Token(tokenAddr).allowance(owner,address(this));
    }
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
    
}
