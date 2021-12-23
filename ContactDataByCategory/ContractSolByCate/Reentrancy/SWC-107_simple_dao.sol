/*
 * @source: http://blockchain.unica.it/projects/ethereum-survey/attacks.html#simpledao
 * @author: Atzei N., Bartoletti M., Cimoli T
 * Modified by Josselin Feist
 */
pragma solidity 0.4.24;

contract SimpleDAO {
  mapping (address => uint) public credit;
    
  function donate(address to) payable public{
    credit[to] += msg.value;
  }
    
  function withdraw(uint amount) public{
    if (credit[msg.sender]>= amount) {
      require(msg.sender.call.value(amount)());
      credit[msg.sender]-=amount;
    }
  }  

  function queryCredit(address to) view public returns(uint){
    return credit[to];
  }
}
/*
*description: Reentrancy (state change after external call)
*issues:
*- id: SWC-107
*  count: 1
*  locations:
*  - bytecode_offsets:
*      '0xe85040f3e719fc3c0e490a0134d2e8daffadf2d2b7f011336f95505f8d9a92f8': [648, 655]
*    line_numbers:
*      simple_dao.sol: [17, 18]
*/