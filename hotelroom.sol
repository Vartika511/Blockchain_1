pragma solidity ^0.6.4;

contract Hotelroom {
    
    enum Statuses { Vacant, Occupied}
    Statuses currentStatus;

event Occupy(address _occupant, uint _value);

address payable public owner;

constructor() public {
    owner = msg.sender;
    currentStatus = Statuses.Vacant;
}

modifier onlyWhileVacant{
    require(currentStatus == Statuses.Vacant, "Currently Occupied");
    _;
}

modifier costs(uint _amount) {
    require(msg.value >= _amount, "Not enough Ether provided.");
    _;
}

receive() external payable onlyWhileVacant costs(2 ether ) {
    // require(msg.value >= 2 ether, "Not eough ether provided"); 
    // require(currentStatus == Statuses.Vacant, "Currently Occupied");
    currentStatus= Statuses.Occupied;
    owner.transfer(msg.value);
    emit Occupy(msg.sender,msg.value);
    
}
}
