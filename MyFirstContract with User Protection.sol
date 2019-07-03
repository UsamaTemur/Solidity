pragma solidity ^0.4.7;

contract myfirstcontract {
    string sentence ="Write your sentence here";
    address owner;
    
    function myfirstcontract(){
        owner = msg.sender;
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
}