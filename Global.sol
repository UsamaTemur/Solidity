pragma solidity ^0.5.3;

contract Global{
    
                                        //Block and Transaction Related Global Variables and Functions
    
    // Deploy on Rinkeby Test Network(injected Web3) using MetaMask
    
    // 1- blockhash
    /*
    function return blockhash of a block of which block number is provided
    bytes32 is used in return as hash is of 256 bits
    Check link of Rinkeby transaction and copy block number of the transaction
    Paste the copied block number is the getter function of deployed contract
    It will only give latest 256 blocks hash not more blocks
    */
    
    function getBlkHash(uint _blockNumber) public view returns(bytes32){
        return blockhash(_blockNumber);
    }
    
    // 2- block.coinbase
    /*
    function returns the address of the miner which mined this block
    returns should be address payable as miner get paid
    match miner address from block height page on Rinkeby
    */
    
    function getMinAddr() public view returns(address payable){
        return block.coinbase;
    }
    
    // 3- block.gaslimit

    function getBlkGasLimit() public view returns(uint){
        return block.gaslimit;
    }
    
    // 4 - block._blockNumber
    
    function getBlkNum() public view returns(uint){
        return block.number;
    }
    
    // 5- block.timestamp;
    // Check time convestion at https://www.epochconverter.com/
    
    function getBlkTS() public view returns(uint){
        return block.timestamp;
    }
    
    // 6 - gasleft
    
    function gasLeft() public view returns(uint256){
        return gasleft();
    }
    
    // These can be delpoyed on JavaScript VM
    
    // 7 - msg.data
    // Tells complete data details     
    
    function getMsgData(bytes memory _var1) public pure returns(bytes memory){
        _var1 = 'a';
        return msg.data;
    }
    
    // 8 - msg.sender
    
    function getMsgSender() public view returns(address){
        return msg.sender;
    }
    
    // 9 - msg.sig
    
    function getMsgSig() public pure returns(bytes4){
        return msg.sig;
    }
    
    // 10 - msg.value
    
    function setMsgValue() public payable returns(uint){
        return msg.value;
    }
    
    // 11 - now
    
    function getBlkTSNow() public view returns(uint){
        return now;
    }
    
    // 12 - tx.gasprice
    
    function getGasPrice() public view returns(uint){
        return tx.gasprice;
    }
    
    // 13 - tx.origin
    
    function getOriginAddr() public view returns(address){
        return tx.origin;
    }
    
                                        // Mathematical & Cryptographic Related Global Variables and Functions
    
    //14 - addmod = (3+5) % 6 = 8 % 6 = 2
    
    function getAddMod(uint x, uint y, uint k) public pure returns(uint){
        return addmod(x,y,k);
    }
    
    //15 - mulmod = (3*5) % 6 = 15 % 6 = 3
    
    function getMulMod(uint x, uint y, uint k) public pure returns(uint){
        return mulmod(x,y,k);
    }
    
    //16 keccak256
    // Whatever we pass in keccak256 it will convert it and give its hash
    
    function getKaccak256(bytes memory _input) public pure returns(bytes32 _output){
        return keccak256(_input);
    }
                                        //Contract Related Global Variables and Functions
    
    //17 - this
    function getThis() public view returns(uint){
        return address(this).balance;
    }
    
    //18 - selfdestruct
    
    function setDestructContract(address payable _address) public{
        selfdestruct(_address);
    }
    
                                        //ABI Related Global Variables and Functions
    
    //19 - abi.encode
    
    function getAbiEncode() public pure returns(bytes memory){
        return abi.encode("abc", "def");
    }
    
    //20 - abi.encodePacked
    
    function getAbiEncodePacked() public pure returns(bytes memory){
        return abi.encodePacked("abc", "def");
    }
    
    function getKeccak256AEP() public pure returns(uint){
        return uint(keccak256(abi.encodePacked("abc", "def")));
    }
        
}