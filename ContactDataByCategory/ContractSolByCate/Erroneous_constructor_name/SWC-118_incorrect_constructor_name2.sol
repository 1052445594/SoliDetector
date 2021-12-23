/*
 * @source: https://github.com/trailofbits/not-so-smart-contracts/blob/master/wrong_constructor_name/incorrect_constructor.sol
 * @author: Ben Perez
 * Modified by Gerhard Wagner
 */

pragma solidity 0.4.24;

contract Missing{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    function Constructor()
        public 
    {
        owner = msg.sender;
    }

    function () payable {} 

    function withdraw() 
        public 
        onlyowner
    {
       owner.transfer(this.balance);
    }

}
/*
*description: Invalid constructor name variant 2
*issues:
*- id: SWC-118
*  count: 1
*  locations:
*  - bytecode_offsets: {}
*    line_numbers:
*      incorrect_constructor_name2.sol: [17]
*/
