// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;

contract Mapping {
    uint totalSupply;
	address owner;
	mapping (address => uint) public userBalances;

	constructor() {
		owner = msg.sender;
		totalSupply = 0;
	}

	function mint(address _address, uint _amount) public {
		userBalances[_address] = userBalances[_address] + _amount;
		totalSupply += _amount;
	}

	function transferTo(address _address, uint _amount) {
		
	}
}
