//SPDX-License-Identifier:MIT

pragma solidity  ^0.8.15;
//================================Task 1=================================================



contract Task1{

    string public str ; 


    constructor(){

        str = 'Hello  Solidity';

    } 

}


contract Task2{

uint public value;

constructor(){
    
value = 10;

}

function returnStateVariable() public view returns(uint){

return (value);

}

function returnLocalVariable()public pure returns(uint){

uint value2 = 20;
return(value2);
}

}