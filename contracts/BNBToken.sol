// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract BNBToken {
    string public name = "BNBToken";
    string public symbol = "BNB";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000 * 10 ** uint256(decimals);

    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }
}
