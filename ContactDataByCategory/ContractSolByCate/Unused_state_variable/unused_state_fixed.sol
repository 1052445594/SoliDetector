//pragma solidity ^0.4.24;

contract A{
    address used;
}

contract B is A{

    function () external{
        used = address(0);
    }
}
