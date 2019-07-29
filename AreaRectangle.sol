pragma solidity ^0.5.1;

contract AreaRectangle{
    uint l;
    uint w;
    uint area;
    
    constructor()public{
        area=0;
    }
    
    function GetArea() public view returns(uint){
        return (area);
    }
    
    function SetArea(uint lenght, uint width) public returns(uint){
        l = lenght;
        w = width;
        area= l*w;
        return area;
    }
}