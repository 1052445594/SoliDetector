contract MyContract {

    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function sendTo(address payable receiver, uint amount) public {
        require(tx.origin == owner);
        receiver.transfer(amount);
    }

}
