pragma solidity ^0.5.3;

contract Modifier{
    address public owner;
    uint public balance;
    
    constructor() public{
        owner = msg.sender;
    }
    
    /*
        modifier will help to check owner authentication
        onlyOwner will be used in functions as a modifier
        if modifier condition matches then it replace the _; with function body
        if modifier does not match it will skip the function body and execute the next line
    */
    
    modifier onlyOwner{
        if(msg.sender == owner){
            _;
        }
    }
    
    function setDestructContract(address payable _address) onlyOwner public{
        selfdestruct(_address);
    }
    
    function ReceiveEther() public payable returns(uint){
        balance = address(this).balance;
        return balance;
    }
}