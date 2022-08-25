//SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;


contract Task1{

uint number ; 

function set(uint _number )public {

number = _number;

}
function get()public view returns(uint){
    return( number);
}

}

contract Task2{

function evaluate(int a ,int b )public pure returns(int){
int value = (a+b)-(a-b);
return(value);
}


}

contract  Task3{

function find(int a ) public pure returns(int) {
require(a> 0 , "enter a positive number");

int answer = a % 3  ;
return(answer);
}
}

contract Task4{

    function average(int a , int b , int c)public pure returns(int){

        require(a > 0 && b>0 && c> 0 , "enter positive values only");

int average1 = (a + b + c ) / 3 ;
 
 return average1;


    }
}



