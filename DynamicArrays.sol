pragma solidity ^0.5.3;

contract DynamicArrays{
    
    byte[] public var1;
    
    int[] public num1;
    
    /*
    push function for byte variable
    find length for byte variable
    pop function for byte variable
    */

    function setbytes(byte _var1) public{
        var1.push(_var1);                   // add values at the end of the array var1[]
    }
    
    function getByteLength() public view returns(uint){
        return var1.length;
    }
    
    function popBytes() public{
        var1.pop();                         // pop values from the end of the array var1[]
    }
    
    /*
    push function for int variable
    find length for int variable
    pop function for int variable
    */

    function setInt(int _num1) public{
        num1.push(_num1);
    }
    
    function getIntLength() public view returns(uint){
        return num1.length;
    }
    
    function popInt() public{
        num1.pop();
    }
}