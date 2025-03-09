// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Basics {
    address public myAddress;

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getAddress() public view returns(address) {
        return myAddress;
    }
}
