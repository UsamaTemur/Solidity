pragma solidity ^0.5.3;

contract addressDataTypes{
    address public contract_owner;
    address payable public recipient_address;
    
    uint public transfer_amount;
    uint public recipient_balance;
    
    constructor() public{
        contract_owner = msg.sender;    // msg.sender stores account address which will deploy the contract
    }
    
    function transferEther(address payable _recipient_address) public payable returns(uint){
        recipient_address = _recipient_address;
        transfer_amount = msg.value;                    // msg.value stores value of transfer amount
        recipient_address.transfer(transfer_amount);    // member function .transfer(uint) used to transfer amount to recipient
        recipient_balance=recipient_address.balance;    // member function .balance is used to check balance of recipient
        return recipient_balance;                       // return balance amount of recipient
    }
}