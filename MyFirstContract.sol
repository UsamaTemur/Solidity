pragma solidity ^0.4.7;

contract myfirstcontract {
    string sentence ="Write your sentence here";
    
    function GetSentence() public constant returns(string){
        return sentence;
    }
    
    function SetSentence(string newsentence) public returns(string){
        sentence= newsentence;
        return 'new sentence is set!';
    }
}