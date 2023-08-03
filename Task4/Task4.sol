// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;
contract ChickenFarm {


function checkStatus() public pure returns (string memory) {
// Return a message that checks whether the farm is working or not.
return "Farm is currently operating normally.";
}

// create chickens and counter variables where chickens is a key-value
uint nChickens;
//pair variable that stores all the created chickens.
mapping(uint=>Chicken) public chickens;


struct Chicken {
string name;
uint id;
}


function addChicken(string memory name) public {
// This function is going to add our new chickens to the Chicken struct.
nChickens++;
chickens[nChickens]= Chicken(name,nChickens);

}
// Create getChicken function which takes the ID of the chicken and returns
//the chicken's ID and its name
function GetChicken (uint id)public view returns(string memory , uint){
Chicken memory chicken=chickens[id];
return (chicken.name,chicken.id);

}
}