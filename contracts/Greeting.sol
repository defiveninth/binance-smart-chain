// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Greeting {
    string public greetings = "Hello, World";
    string public name = "ABDURRAUF";
    string public surname = "Sakenov";

    function getFullName() public view returns(string memory) {
        return string(abi.encodePacked(name, surname));
    }

    function setGreetings(string calldata message) external {
        greetings = message;
    }

    function getGreetings() public view returns (string memory) {
		return greetings;
	}
}