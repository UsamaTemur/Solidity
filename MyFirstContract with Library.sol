pragma solidity ^0.4.24;
import "browser/testLibrary.sol";

contract myfirstcontract {
    string sentence ="Write your sentence here";
    address owner;
    
    function myfirstcontract(){
        owner = msg.sender;
    }
    
    function checkMyLibrary() public constant returns (string){
        return mylibrary.checkLibrary();
    }
    
    function GetSentence() public constant returns(string){
        return sentence;
    }
    
    function SetSentence(string newsentence) public returns(string){
        if (owner != msg.sender){
            return "Don't dare to change the contract!";
        }
        sentence= newsentence;
        return 'new sentence is set!';
    }
    
    uint balance =100;
    
    function Transact(uint value)public returns(uint){
        assert(value %10 == 0);
        require(value <= balance);
        balance = balance - value;
        return balance;
    }
}