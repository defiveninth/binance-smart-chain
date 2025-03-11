// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Bytes {
    bytes5 public wordInBytes = "hello";

    function getByteByIndex(uint _index) public view returns(bytes1) {
        return wordInBytes[_index];
    }
}
