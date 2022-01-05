// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract Mapping {
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myMapping;
    
    struct Book {
        string title;
        string author;
    }
    
    
    constructor() public {
        names[1]="vartika";
        names[2]= "vedant";
        names[3]="vijay";
        
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
        
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myMapping[msg.sender][_id] = Book(_title, _author);
    }
    
}