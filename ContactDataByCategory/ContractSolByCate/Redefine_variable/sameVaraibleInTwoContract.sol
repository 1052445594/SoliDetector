//pragma solidity ^0.4.24;
contract A{
uint used=1;

}
contract B is A{

uint used=2;
function () external{

uint used=3;
}
}
