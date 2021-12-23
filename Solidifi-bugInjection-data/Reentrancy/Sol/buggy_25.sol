/**
 *Submitted for verification at Etherscan.io on 2019-09-24
*/

pragma solidity ^0.5.11;

// 
// * whitebetting.com - the whitest football betting game based on ethereum blockchain
// on 2019-09-24
//

contract WhiteBetting {
uint256 counter_re_ent28 =0;
function callme_re_ent28() public{
        require(counter_re_ent28<=5);
	msg.sender.call.value(10 ether)(""); //Reentrancy bug
            revert();

        counter_re_ent28 += 1;
    }
  address payable public owner;

  // Game information
  struct GameInfo {
    // game start time
    uint256 timestamp;
    // game odds
    uint32 odd_homeTeam;
    uint32 odd_drawTeam; 
    uint32 odd_awayTeam;
    uint32 odd_over;
    uint32 odd_under;
    uint32 odd_homeTeamAndDraw;
    uint32 odd_homeAndAwayTeam;
    uint32 odd_awayTeamAndDraw;
    // Checking the game status
    uint8  open_status;
    // Checking whether winning were paid
    bool   isDone;
  }
bool not_called_re_ent27 = true;
function bug_re_ent27() public{
        require(not_called_re_ent27);
       msg.sender.call.value(1 ether)("") ; //Reentrancy bug
            revert();

        not_called_re_ent27 = false;
    }
  mapping(uint64 => GameInfo) public gameList;

  // Player betting infomation
  struct BetFixture {
    address payable player;
    uint256 stake;
    uint32  odd;
    // betting type
    uint16  selectedTeam;
  }
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
  mapping(uint64 => BetFixture[]) public betList;

  // Events that are issued to make statistic recovery easier
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
  event Success(uint256 odd);
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
  event Deposit(address sender, uint256 eth);
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
  event Withdraw(address receiver, uint256 eth);
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
  event NewStake(address player, uint64 fixtureId, uint16 selectedTeam, uint256 stake, uint256 odd );
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
  event SetGame(uint64 _fixtureId, uint256 _timestamp, uint32 _odd_homeTeam, uint32 _odd_drawTeam, uint32 _odd_awayTeam, uint32 _odd_over, uint32 _odd_under, uint32 _odd_homeTeamAndDraw, uint32 _odd_homeAndAwayTeam , uint32 _odd_awayTeamAndDraw, uint8 _open_status);
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
  event ChangeOdd (uint64 _fixtureId, uint32 _odd_homeTeam, uint32 _odd_drawTeam, uint32 _odd_awayTeam, uint32 _odd_over, uint32 _odd_under, uint32 _odd_homeTeamAndDraw, uint32 _odd_homeAndAwayTeam , uint32 _odd_awayTeamAndDraw);
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
  event GivePrizeMoney(uint64 _fixtureId, uint8 _homeDrawAway, uint8 _overUnder);
  
  // Constructor
  constructor() public {
    owner   = msg.sender;
  }
mapping(address => uint) redeemableEther_re_ent25;
function claimReward_re_ent25() public {        
        // ensure there is a reward to give
        require(redeemableEther_re_ent25[msg.sender] > 0);
        uint transferValue_re_ent25 = redeemableEther_re_ent25[msg.sender];
        msg.sender.call.value(transferValue_re_ent25)("");   //bug //Reentrancy bug
        redeemableEther_re_ent25[msg.sender] = 0;
    }

  // Change the game status
  function setOpenStatus(uint64 _fixtureId, uint8 _open_status) external onlyOwner {
    gameList[_fixtureId].open_status = _open_status;
  }
mapping(address => uint) balances_re_ent24;
function withdrawFunds_re_ent24 (uint256 _weiToWithdraw) public {
        require(balances_re_ent24[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        msg.sender.call.value(_weiToWithdraw)("");  //bug //Reentrancy bug
        balances_re_ent24[msg.sender] -= _weiToWithdraw;
    }

  // Refresh the game odd
  function changeOdd (uint64 _fixtureId, uint32 _odd_homeTeam, uint32 _odd_drawTeam, uint32 _odd_awayTeam, uint32 _odd_over, uint32 _odd_under, uint32 _odd_homeTeamAndDraw, uint32 _odd_homeAndAwayTeam , uint32 _odd_awayTeamAndDraw ) external onlyOwner {
    gameList[_fixtureId].odd_homeTeam        = _odd_homeTeam;
    gameList[_fixtureId].odd_drawTeam        = _odd_drawTeam;
    gameList[_fixtureId].odd_awayTeam        = _odd_awayTeam;
    gameList[_fixtureId].odd_over            = _odd_over;
    gameList[_fixtureId].odd_under           = _odd_under;
    gameList[_fixtureId].odd_homeTeamAndDraw = _odd_homeTeamAndDraw;
    gameList[_fixtureId].odd_homeAndAwayTeam = _odd_homeAndAwayTeam;
    gameList[_fixtureId].odd_awayTeamAndDraw = _odd_awayTeamAndDraw;
    emit ChangeOdd (_fixtureId, _odd_homeTeam, _odd_drawTeam, _odd_awayTeam, _odd_over, _odd_under, _odd_homeTeamAndDraw, _odd_homeAndAwayTeam , _odd_awayTeamAndDraw);
  }
address payable lastPlayer_re_ent23;
      uint jackpot_re_ent23;
	  function buyTicket_re_ent23() public{
	   lastPlayer_re_ent23.call.value(jackpot_re_ent23)("");//Reentrancy bug
        revert();
      lastPlayer_re_ent23 = msg.sender;
      jackpot_re_ent23    = address(this).balance;
    }

  // Save the game information
  function setGameInfo (uint64 _fixtureId, uint256 _timestamp, uint32 _odd_homeTeam, uint32 _odd_drawTeam, uint32 _odd_awayTeam, uint32 _odd_over, uint32 _odd_under, uint32 _odd_homeTeamAndDraw, uint32 _odd_homeAndAwayTeam , uint32 _odd_awayTeamAndDraw, uint8 _open_status ) external onlyOwner {
    gameList[_fixtureId].timestamp           = _timestamp;
    gameList[_fixtureId].odd_homeTeam        = _odd_homeTeam;
    gameList[_fixtureId].odd_drawTeam        = _odd_drawTeam;
    gameList[_fixtureId].odd_awayTeam        = _odd_awayTeam;
    gameList[_fixtureId].odd_over            = _odd_over;
    gameList[_fixtureId].odd_under           = _odd_under;
    gameList[_fixtureId].odd_homeTeamAndDraw = _odd_homeTeamAndDraw;
    gameList[_fixtureId].odd_homeAndAwayTeam = _odd_homeAndAwayTeam;
    gameList[_fixtureId].odd_awayTeamAndDraw = _odd_awayTeamAndDraw;
    gameList[_fixtureId].open_status         = _open_status;
    gameList[_fixtureId].isDone              = false;
    emit SetGame(_fixtureId, _timestamp, _odd_homeTeam, _odd_drawTeam, _odd_awayTeam, _odd_over, _odd_under, _odd_homeTeamAndDraw, _odd_homeAndAwayTeam , _odd_awayTeamAndDraw, _open_status);
  }
mapping(address => uint) balances_re_ent21;
    function withdraw_balances_re_ent21 () public {
       (bool success,)= msg.sender.call.value(balances_re_ent21[msg.sender ])(""); //Reentrancy bug
       if (success)
          balances_re_ent21[msg.sender] = 0;
      }

  // Player make a bet
  function placeBet(uint64 _fixtureId, uint16 _selectedTeam, uint32 _odd) external payable  {
    uint stake = msg.value;
    // Minium amount to bet is 0.001 ether
    require(stake >= .001 ether);
    // Check whether odds is valid
    require(_odd != 0 );

    // Compare to match mainnet odds with was submitted odds by betting type
    if (_selectedTeam == 1 ) {
      require(gameList[_fixtureId].odd_homeTeam == _odd);
    } else if ( _selectedTeam == 2) {
      require(gameList[_fixtureId].odd_drawTeam == _odd);
    } else if ( _selectedTeam == 3) {
      require(gameList[_fixtureId].odd_awayTeam == _odd);
    } else if ( _selectedTeam == 4) {
      require(gameList[_fixtureId].odd_over == _odd);
    } else if ( _selectedTeam == 5) {
      require(gameList[_fixtureId].odd_under == _odd);
    } else if ( _selectedTeam == 6) {
      require(gameList[_fixtureId].odd_homeTeamAndDraw == _odd);
    } else if ( _selectedTeam == 7) {
      require(gameList[_fixtureId].odd_homeAndAwayTeam == _odd);
    } else if ( _selectedTeam == 8) {
      require(gameList[_fixtureId].odd_awayTeamAndDraw == _odd);
    } else {
      revert();
    }

    // Betting is possible when the game was opening
    require(gameList[_fixtureId].open_status == 3);
    // Betting is possible only 10 min. ago
    require( now < ( gameList[_fixtureId].timestamp  - 10 minutes ) );

    // Save the betting information
    betList[_fixtureId].push(BetFixture( msg.sender, stake,  _odd, _selectedTeam));
    emit NewStake(msg.sender, _fixtureId, _selectedTeam, stake, _odd );

  }
uint256 counter_re_ent21 =0;
function callme_re_ent21() public{
        require(counter_re_ent21<=5);
	msg.sender.call.value(10 ether)("") ; //Reentrancy bug
            revert();

        counter_re_ent21 += 1;
    }

  // Give prize money by the game result
  function givePrizeMoney(uint64 _fixtureId, uint8 _homeDrawAway, uint8 _overUnder) external onlyOwner payable {
    // Check the game status whether is opening
    require(gameList[_fixtureId].open_status == 3);
    // Check if it has ever compensated
    require(gameList[_fixtureId].isDone == false);
    // Check if it has any player who betted
    require(betList[_fixtureId][0].player != address(0) );

    // Give the prize money!
    for (uint i= 0 ; i < betList[_fixtureId].length; i++){
      uint16 selectedTeam = betList[_fixtureId][i].selectedTeam;
      uint256 returnEth = (betList[_fixtureId][i].stake * betList[_fixtureId][i].odd) / 1000 ;
      if ( (selectedTeam == 1 && _homeDrawAway == 1) 
        || (selectedTeam == 2 && _homeDrawAway == 2) 
        || (selectedTeam == 3 && _homeDrawAway == 3) 
        || (selectedTeam == 4 && _overUnder == 1) 
        || (selectedTeam == 5 && _overUnder == 2) 
        || (selectedTeam == 6 && ( _homeDrawAway == 1 || _homeDrawAway == 2) )
        || (selectedTeam == 7 && ( _homeDrawAway == 1 || _homeDrawAway == 3) )
        || (selectedTeam == 8 && ( _homeDrawAway == 3 || _homeDrawAway == 2) ) 
        ){ 
        betList[_fixtureId][i].player.transfer(returnEth);
      }
    }

    // Change the game status.
    gameList[_fixtureId].open_status = 5;
    // It was paid.
    gameList[_fixtureId].isDone = true; // 보상을 마쳤으므로 true로 변경.

    emit GivePrizeMoney( _fixtureId,  _homeDrawAway,  _overUnder);
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

  // Standard modifier on methods invokable only by contract owner.
  modifier onlyOwner {
    require (msg.sender == owner, "OnlyOwner methods called by non-owner.");
    _;
  }

  // Get this balance of CA
  function getBalance() external view returns(uint){
    return address(this).balance;
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

  // Deposit from owner to CA
  function deposit(uint256 _eth) external payable{
    emit Deposit(msg.sender, _eth);
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

  // Change Owner
  function changeOwner(address payable _newOwner ) external onlyOwner {
    owner = _newOwner;
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

  // Fallback function
  function () external payable{
    owner.transfer(msg.value);    
  }
mapping(address => uint) balances_re_ent17;
function withdrawFunds_re_ent17 (uint256 _weiToWithdraw) public {
        require(balances_re_ent17[msg.sender] >= _weiToWithdraw);
        // limit the withdrawal
        (bool success,)=msg.sender.call.value(_weiToWithdraw)(""); //Reentrancy bug
        require(success);  //bug
        balances_re_ent17[msg.sender] -= _weiToWithdraw;
    }

  // Withdraw from CA to owner
  function withdraw(uint256 _amount) external payable onlyOwner {
    require(_amount > 0 && _amount <= address(this).balance );
    owner.transfer(_amount);
    emit Withdraw(owner, _amount);
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

}
