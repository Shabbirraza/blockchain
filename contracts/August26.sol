//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;

contract task1{

function Sum(uint inte)public pure returns(uint){
   uint  total;
   uint newNum ; 

while(inte > 1 ){
   newNum= inte % 10;
   total= total + newNum;
   inte = inte / 10;
}

total = total + inte;

return total;
}

}


contract task2{
    function series(uint num1,uint num2 ,uint num3 , uint nTH) public pure returns(uint){

        uint newNum;

    for(uint i= 3 ; i< nTH ; i++){

   newNum = num1 +num2 + num3;
   num1 = num2;
   num2 = num3 ; 
   num3 = newNum;

}
   return num3;
   
    }
}