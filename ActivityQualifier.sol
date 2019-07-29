pragma solidity 0.5.3;

contract ActQualifier{
    int var1 = 5;
    int var2 = 4;
    
    function f1() public view returns(int _total){
        _total = var1+ var2;
        // var1 = 9;    Error because we cannot mofidy a state variable with view qualifier
        return _total;
    }
    
    function f2() public pure returns(int _total){
        // _total = var1+ var2; Error because we cannot access a state variable with pure qualifier
        _total = 3+5;
        return _total;
    }
    
    // Fallback Function
    function() external payable{
    /*  1- Created a contract using Fallback Function 
        2- Set Value and unit in Ether to send from MetaMask(EOA) to this Contract account
        3- Execute Fallback function
    */    
    }
}