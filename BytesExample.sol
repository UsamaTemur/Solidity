pragma solidity ^0.5.3;

contract byteExample{
    
    bytes1 public var1 = 'a';
    bytes2 public var2 = 'ab';
    bytes3 public var3 = 'abc';
    bytes4 public var4 = 0x12345678;
    
    function getByte(uint i) public view returns(bytes1){   // always returns in bytes1
        return var3[i];
    }
    
    function getLength() public view returns(uint){         // tells the length of a byte data variable
        return var2.length;
    }
}