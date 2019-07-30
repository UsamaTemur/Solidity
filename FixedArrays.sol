pragma solidity ^0.5.3;

contract FixedArrays{
    
    bytes1 public var1 = 'a';
    bytes2 public var2 = 'ab';
    bytes3 public var3 = 'c';                               // or var = 'abc', length will both times be 3 as bytes3 in used
    bytes4 public var4 = 0x12345678;
    
    int[2] public num1 = [1,2];
    int8[3] public num2;
    
    function getByte(uint i) public view returns(bytes1){   // always returns in bytes1
        return var3[i];
    }
    
    function getByteLength() public view returns(uint){     // tells the length of a byte data variable
        return var3.length;
    }
    
    function setInt(uint i, int8 _num2) public{
        num2[i] = _num2;
    }
    
    function getIntLength() public view returns(uint){
        return num2.length;
    }
}