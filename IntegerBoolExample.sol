pragma solidity 0.5.3;

contract IntBoolExample{
    
    int8 public intVar8=15;
    int16 public intVar16= 10000;
    uint8 public uintVar8=255;
    
    /** @dev intVarr8 variable's value is out of range of int8
        @dev uintVarr8 variable's value is out of range of uint8
        
        int8 public intVarr8=128;
        uint8 public uintVarr8= -14;
    */
    
    bool public flagVar=true;
    
    function setIntBool(int8 _intVar8, uint8 _uintVar8, bool _flagVar) public{
        intVar8= _intVar8;
        uintVar8= _uintVar8;
        flagVar= _flagVar;
    }
}