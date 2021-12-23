contract SimpleBank {
    mapping(address => uint) balances;

    function withdraw(uint amount) {
        msg.sender.call.value(amount);
        balances[msg.sender] -= amount;
    }
}