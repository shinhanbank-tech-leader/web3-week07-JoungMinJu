// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {

    address[] public members;

    function addMember(address newMember) public {
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

}
