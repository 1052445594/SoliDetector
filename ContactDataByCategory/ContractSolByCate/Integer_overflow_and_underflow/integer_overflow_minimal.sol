//Single transaction overflow
//Post-transaction effect: overflow escapes to publicly-readable storage

contract IntegerOverflowMinimal {
    uint public count = 1;

    function run(uint256 input) public {
        count -= input;
    }
}
