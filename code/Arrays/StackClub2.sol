// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {

    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    function addMember(address newMember) public {
        require(isMember(msg.sender) , "members not found");
        members.push(newMember);

    }

    function isMember(address member) public returns(bool) {
            for (uint i= 0; i<members.length; i++) {
                if (members[i] == member) {
                    return true;
                }
            }
            return false;
    }

    function removeLastMember() public {
        require(isMember(msg.sender) , "members not found");
        members.pop();


    }

}
