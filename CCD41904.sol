pragma solidity ^0.4.19;

// 741  minimalist test

contract CryptoKodmodoKillaDragons{     


uint randNonce = now % 200;


  // Public variables of the erc20 token 
  
 string public name;                   
 string public symbol;                 
 int public   decimals;
 address owner;
   
  //     Memory      721 asset 
  
    struct Dragon {
        uint randMagic;
        uint16 livesCount;
        uint BountyCount;
         }
         
     Dragon[] public dragons;
     
        mapping (uint => address) public dragonToOwner;
             
// you get dragon 0 to start. 


//      Memory  erc20

    mapping (address => uint256) tokbalances;
   
//     events 721

 
//     events erc20


  /*    *****CONSTRUCTOR*****    */

    function CryptoKodmodoKillaDragons() public payable{
    owner = msg.sender;

//  erc20   details

        name = "CryptoKodmodoKillaDragons";                                   
        decimals = 0;                            
        symbol = "cKKd"; 
    }





//----------GAME--------------------------------Create -----------

    function createDragon(uint randMagic) internal {  
      tokbalances[msg.sender] =   10000000 ;     
      dragons.push(Dragon(id, 0, 0)) - 1;
      dragonToOwner[id] = msg.sender;
     

     }

      
//--------------------------------------------------START-------1-------------------------------


         function STARTGAME() public payable {
         require(msg.value >= 1000000000);
         uint randMagic = uint(keccak256(randNonce)); 
         createDragon( randMagic);
         }        

//-----------------------------------tests ----------------------

    function inquiryRandNonce() view returns(uint){
        return randNonce;
    }
    
    function WhoAm_I() public view returns (address){
  return msg.sender;
  }
  
  function WhosTheBoss() public view returns (address) {
return owner;   //  current owner
}
function bankBalance() public view returns (uint) {
    return this.balance;

  
}


// function setPlayFee(uint fee) {
 //   uint levelUpFee =fee;
 // }

  //function levelUp(uint _zombieId) external payable {
  //  require(msg.value == levelUpFee);
//    zombies[_zombieId].level++;
//  }





    function() payable{
        
    }
    
    function bobsBalance() public view returns (uint) {
    return uint(tokbalances[msg.sender]);
     
}   

function clearETH() public returns(uint){
     owner.transfer(this.balance);
    
}
    
    
    //  final bracket
}