pragma solidity ^0.5.3;

contract ErrorHandling{
    address public owner;
    uint public balance;
    
    constructor() public{
        owner = msg.sender;
    }
    
    /*
        any account can destroy the contract function owner not compulsory
        _address is the contract address which will have the balance amount transfered in it from the destroing contract
        require will strict the function to only be used by the owner
    */
    
    function setDestructContract(address payable _address) public{
        require(msg.sender == owner, "Only contract owner can run this function");
        assert (address(this).balance != 0);
        selfdestruct(_address);
    }
    
    function ReceiveEther() public payable returns(uint){
        balance = address(this).balance;
        revert("halt this execution");
        return balance;
    }
}