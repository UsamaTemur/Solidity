pragma solidity 0.5.3;

contract VarTypes{
    int public StateVar1;
    string public StateVar2;

    function f1() public{
        int _var1= 2;
        string memory _var2= "Usama";
        StateVar1= _var1;
        StateVar2= _var2;
    }

    function f2() public{
        /**
            @dev StateVar1 will not be assigned _var1 as _var1 in not yet defined in this function
            StateVar1= _var1;
         */
         
        int _var1= 5;
        StateVar1= _var1;
    }
    
}