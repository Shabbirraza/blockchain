// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Task1{

    function Power(uint num1, uint power)public pure returns(uint){
         return num1**power;

    }
}


contract task2{

function PalinCheck(uint num) public pure returns(string memory){

    
    uint orignalNum = num;
    uint newNum ; 
    while(num > 0 ){
        uint remainder = num %10 ; 
         newNum = (newNum * 10 ) + remainder;
        num = num / 10;
    }
    if(newNum == orignalNum){
        return "palindrome";
    }
return"not a palindrome";
}

}