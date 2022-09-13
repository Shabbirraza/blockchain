// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting{
          
          address  admin;
          address []  voterList;
          address   [] public  blacklist;
          uint public cand1 ;
          uint public cand2 ; 
          mapping(address => bool) voteStatus;

          

          constructor(){
             
             admin = msg.sender;

          }

          function registerToVote()public {
              address voter = msg.sender;
              voterList.push(voter);
          }
          function seeVoterList()public view returns(address[] memory){
                return voterList;
          }
          function addToBlackList(address _blacklist)public {
             require(msg.sender == admin , "Only admin is authorised to do so");
             blacklist.push(_blacklist);
          }

          function vote(string memory candName)public returns(string memory){
              require(voteStatus[msg.sender] == false , "you have already voted");
               for (uint i = 0; i < blacklist.length; i++) {
        if (blacklist[i] == msg.sender) {
            return "not eligible to vote";
        }
    }
    if(keccak256(abi.encodePacked((candName))) == keccak256(abi.encodePacked(("cand1")))){

                             cand1 = cand1 + 1 ; 

    }else if(keccak256(abi.encodePacked((candName))) == keccak256(abi.encodePacked(("cand2")))){
                              cand2 = cand2 + 1 ; 
                           
    }else{
        return "please enter correct candidate";
    }

voteStatus[msg.sender] = true;
    return "vote casted";
          }   



      function seeBlackList()public view returns(address[] memory){
          return(blacklist);
      }
          

          
}