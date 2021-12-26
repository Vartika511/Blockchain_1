
//All about Mapping, Functions, Struct, Variables, Modifiers, and Vsibility.

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;


contract SimpleStorage {
    // this will get initialized to 0!
    uint256  favoriteNumber;
     
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    //fixed Array 
    People public person = People({favoriteNumber:2, name:"Patrick"});

    function store(uint256 x) public {
        favoriteNumber = x;
    } 
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
  
    /* function retrieve2(uint256 favoriteNumber) public pure returns(uint256){
       return favoriteNumber+favoriteNumber;
    } */
    
    //Dynamic Array 
    People[] public peo;
    function addPerson(string memory nam, uint y) public{
       // peo.push(People({favoriteNumber:y, name: nam}));
       peo.push(People(y,nam));
       nameToFavoriteNumber[nam] = y;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

}




