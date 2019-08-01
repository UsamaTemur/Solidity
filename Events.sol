pragma solidity ^0.5.3;

contract Events{
    
    address public fromAccount;
    uint public toAcctBalance;
    
    event transferred(address, address, uint);
    
    function transfer(address payable _toAcct) public payable{
        fromAccount = msg.sender;
        _toAcct.transfer(msg.value);
        toAcctBalance = _toAcct.balance;
        emit transferred(fromAccount, _toAcct, msg.value);
    }
}