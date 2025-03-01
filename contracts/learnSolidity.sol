// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LearnSolidity {
    uint256 public myNumber = 10;

    function setNumber(uint256 _num) public {
        myNumber = _num;
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}
