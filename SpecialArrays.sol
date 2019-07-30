pragma solidity ^0.5.3;

contract SpecialArrays{
    
    /* 
    BYTES Arrays
    Bytes elements do not have padding between them as in byte.
    They are closely attached to each other
    */
    
    bytes public var1 = new bytes(0);   // Bytes array with 0 length
    
    string public var2 = "Solidity Smart Contract";
    
    bytes public var3 = bytes(var2);    // Convert a string into bytes
    
    function setBytes(byte _var1) public {
        var1.push(_var1);
    }
    
    function getLength() public view returns(uint){
        return var3.length;
    }
    
    function popByte() public{
        var1.pop();
    }
    
}