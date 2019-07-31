pragma solidity ^0.5.3;

contract Structs{
    
    struct Trading{
        uint tradeid;
        uint quantity;
        uint price;
        string traderName;
    }
    
    Trading public cryptoTrading;
    
    // For keeping multiple values in a struct use an array
    Trading[] public cryptoTrading1;
    
    function setStruct(uint _tradeid, uint _quatity, uint _price, string memory _traderName) public{
        cryptoTrading.tradeid = _tradeid;
        cryptoTrading.quantity = _quatity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }
    
    // Local variables will pass values to temporary variable then it will push them to the array 
    function setStruct1(uint _tradeid, uint _quatity, uint _price, string memory _traderName) public{
        Trading memory temptradeStruct = Trading({
            tradeid : _tradeid,
            quantity : _quatity,
            price : _price,
            traderName : _traderName
        });
        
        // Push function
        cryptoTrading1.push(temptradeStruct);
    }
    
    function getStruct() public view returns(uint, uint, uint, string memory){
        return(cryptoTrading.tradeid, cryptoTrading.quantity, cryptoTrading.price, cryptoTrading.traderName);
    }
    
    // Getter function for the array
    function getStruct1() public view returns(uint, uint, uint, string memory){
        return(cryptoTrading.tradeid, cryptoTrading.quantity, cryptoTrading.price, cryptoTrading.traderName);
    }    
}