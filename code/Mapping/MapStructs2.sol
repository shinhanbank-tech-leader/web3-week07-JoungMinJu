// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external{
		require(!users[msg.sender].isActive, "user already exists");
		users[msg.sender] = User(100, true);
	}

   function transfer(address recipient, uint amount) external {
        require(users[msg.sender].isActive, "sender not active");
        require(users[recipient].isActive, "recipient not active");
        require(users[msg.sender].balance >= amount, "insufficient balance");

        users[msg.sender].balance -= amount;
        users[recipient].balance += amount;
    }
}
