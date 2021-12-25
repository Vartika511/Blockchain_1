
//All about Functions, Struct, Variables, Modifiers, and Vsibility.

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    // this will get initialized to 0!
    uint256  favoriteNumber;
     
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public peo;
    // People public person = People({favoriteNumber:2, name:"Patrick"});

    function store(uint256 x) public {
        favoriteNumber = x;
    } 
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
<<<<<<< HEAD
    /* function retrieve2(uint256 favoriteNumber) public pure returns(uint256){
       return favoriteNumber+favoriteNumber;
    } */
    
    function addPerson(string memory nam, uint y) public{
       peo.push(People({favoriteNumber:y, name: nam}));
=======
    function retrieve2(uint256 favoriteNumber) public pure returns(uint256){
       return favoriteNumber+favoriteNumber;
    } 
    
    function addPerson(string memory nam, uint y) public{
       // peo.push(People({favoriteNumber:y, name: nam}));
>>>>>>> 25d0b28e4d6591a858d8079534d2fd1b05fa2697
       peo.push(People(y,nam));
    }
}



