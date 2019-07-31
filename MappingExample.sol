pragma solidity ^0.5.3;

contract MappingExample{
    
    mapping(address => uint) public balance;
    
    // enter balance amount to account
    function setBalance(uint _balance) public {
        balance[msg.sender] = _balance;
    }
    
    // input address to get balance of that address
    function getBalance(address _address) public view returns(uint){
        return balance[_address];
    }
}