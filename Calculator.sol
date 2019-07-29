pragma solidity ^0.5.1;

contract Calculator{
    uint input1;
    uint input2;
    
    constructor()public{
        input1=0;
        input2=0;
    }
    function input(uint value1, uint value2)public returns(uint){
        input1 = value1;
        input2 = value2;
    }
    
    function add() public view returns(uint){
        return (input1+input2);
    }

    function sub() public view returns(uint){
        return (input1-input2);
    }    

    function mul() public view returns(uint){
        return (input1*input2);
    }

    function div() public view returns(uint){
        return (input1/input2);
    }    
}