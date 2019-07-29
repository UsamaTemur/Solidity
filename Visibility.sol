pragma solidity ^0.5.3;

contract A{
    int public var1 = 7;
    
    function getVal1() public view returns(int){
        //access not granted as external visibility cannot be used in same contract
        //int x = getVal2();
        return var1;
    }

    function getVal2() external view returns(int){
        /*accessed granted as public visibility can be used in same contract
        int x = getVal1();
        return x;
        */
        return var1;
    }
    function getVal3() private view returns(int){
        int x = getVal1();
        return x;
    }
    function getVal4() internal view returns(int){
        return var1;
    }    
}

contract B{
    A public a = new A();
    int public x1 = a.getVal1();
    int public x2 = a.getVal2();
    // int public x3 = a.getVal3(); Access not granted because of private visibility
    // int public x4 = a.getVal4(); Access not granted because of internal visibility
    
}

contract C is A{
    // directly called function of the parent contract no instance required 
    // for internal visibility in derived contract
    int public x1 = getVal4();
}