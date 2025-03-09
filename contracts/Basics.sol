// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Basics {
    string public greetings;

    function setGreetings(string calldata message) external {
        greetings = message;
    }

    function getGreetings() public view returns (string memory) {
		return greetings;
	}
}
