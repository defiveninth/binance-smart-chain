// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Counter {
    uint256 public counter;

    function setCounter(uint256 _count) public {
        counter = _count;
    }

    function increment() public {
        counter++;
    }

    function decrement() public {
        counter--;
    }
}
