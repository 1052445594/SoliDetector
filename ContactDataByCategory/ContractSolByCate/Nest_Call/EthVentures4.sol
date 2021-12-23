contract EthVentures4 {
struct InvestorArray {
address etherAddress;
uint amount;
uint percentage_ownership; //ten-billionth point precision, to get real %, just divide this number by 100,000,000
}
InvestorArray[] public investors;
//********************************************PUBLIC VARIABLES
uint public total_investors=0;
uint public fees=0;
uint public balance = 0;
uint public totaldeposited=0;
uint public totalpaidout=0;
uint public totaldividends=0;
string public Message_To_Investors="Welcome to EthVentures4! New and improved! All bugs fixed!"; // the manager can send short messages to investors
address public owner;
// manager privilege
modifier manager { if (msg.sender == owner) _ }
//********************************************INIT
function EthVentures4() {
owner = msg.sender;
}
//********************************************TRIGGER
function() {
Enter();
}
//********************************************ENTER
function Enter() {
//DIVIDEND PAYOUT FUNCTION, IT WILL GET INCOME FROM OTHER CONTRACTS, THE DIVIDENDS WILL ALWAYS BE SENT
//IN LESS THAN 2 ETHER SIZE PACKETS, BECAUSE ANY DEPOSIT OVER 2 ETHER GETS REGISTERED AS AN INVESTOR!!!
if (msg.value < 2 ether)
{
uint PRE_payout;
uint PRE_amount=msg.value;
owner.send(PRE_amount/100); //send the 1% management fee to the manager
totalpaidout+=PRE_amount/100; //update paid out amount
PRE_amount-=PRE_amount/100; //remaining 99% is the dividend
//Distribute Dividends
if(investors.length !=0 && PRE_amount !=0)
{
for(uint PRE_i=0; PRE_i<investors.length;PRE_i++)
{
PRE_payout = PRE_amount * investors[PRE_i].percentage_ownership /10000000000; //calculate pay out
investors[PRE_i].etherAddress.send(PRE_payout); //send dividend to investor
totalpaidout += PRE_payout; //update paid out amount
totaldividends+=PRE_payout; // update paid out dividends
}
Message_To_Investors="Dividends have been paid out!";
}
}
// YOU MUST INVEST AT LEAST 2 ETHER OR HIGHER TO BE A SHAREHOLDER, OTHERWISE THE DEPOSIT IS CONSIDERED A DIVIDEND!!!
else
{
// collect management fees and update contract balance and deposited amount
uint amount=msg.value;
fees = amount / 100; // 1% management fee to the owner
totaldeposited+=amount; //update deposited amount
amount-=amount/100;
balance += amount; // balance update
// add a new participant to the system and calculate total players
bool alreadyinvestor =false;
uint alreadyinvestor_id;
//go through all investors and see if the current investor was already an investor or not
for(uint i=0; i<investors.length;i++)
{
if( msg.sender== investors[i].etherAddress) // if yes then:
{
alreadyinvestor=true; //set it to true
alreadyinvestor_id=i; // and save the id of the investor in the investor array
break; // get out of the loop to save gas, because we already found it
}
}
// if it's a new investor then add it to the array
if(alreadyinvestor==false)
{
total_investors=investors.length+1;
investors.length += 1; //increment first
investors[investors.length-1].etherAddress = msg.sender;
investors[investors.length-1].amount = amount;
investors[investors.length-1].percentage_ownership = amount /totaldeposited*10000000000;
Message_To_Investors="New Investor has joined us!"; // a new and real investor has joined us

for(uint k=0; k<investors.length;k++) //if smaller than incremented, goes into loop
{investors[k].percentage_ownership = investors[k].amount/totaldeposited*10000000000;} //recalculate % ownership

}
else // if its already an investor, then update his investments and his % ownership
{
investors[alreadyinvestor_id].amount += amount;
investors[alreadyinvestor_id].percentage_ownership = investors[alreadyinvestor_id].amount/totaldeposited*10000000000;
}
// pay out the 1% management fee
if (fees != 0)
{
owner.send(fees); //send the 1% to the manager
totalpaidout+=fees; //update paid out amount
}

}
}
//********************************************NEW MANAGER
//In case the business gets sold, the new manager will take over the management
function NewOwner(address new_owner) manager
{
owner = new_owner;
Message_To_Investors="The contract has a new manager!";
}
//********************************************EMERGENCY WITHDRAW
// It will only be used in case the funds get stuck or any bug gets discovered in the future
// Also if a new version of this contract comes out, the funds then will be transferred to the new one
function Emergency() manager
{
if(balance!=0)
{
owner.send(balance);
balance=0;
Message_To_Investors="Emergency Withdraw has been issued!";
}
}
//********************************************NEW MESSAGE
//The manager can send short messages to investors to keep them updated
function NewMessage(string new_sms) manager
{
Message_To_Investors = new_sms;
}
//********************************************MANUALLY ADD INVESTORS
//The manager can add manually the investors from the previous versions, 
//so that those that invested in the older versions can join us in the new and updated versions
function NewManualInvestor(address new_investor , uint new_amount) manager
{
totaldeposited+=new_amount; //update deposited amount manually

total_investors=investors.length+1;
investors.length += 1; //increment first
investors[investors.length-1].etherAddress = new_investor;
investors[investors.length-1].amount = new_amount;
investors[investors.length-1].percentage_ownership = new_amount /totaldeposited*10000000000;

Message_To_Investors="New manual Investor has been added by the Manager!"; // you can see if the newest investor was manually added or not, this will add transparency to the contract, since this function should only be used in emergency situations.
// This will ensure that the manager doesn't add fake investors of his own addresses.
}
//********************************************MANUAL DEPOSIT
//The manager can deposit manually from previous version's balances
function ManualDeposit() manager
{
Message_To_Investors = "Manual Deposit received from the Manager";
}

//end
}