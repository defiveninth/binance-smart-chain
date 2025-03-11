// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Address {
    address public myAddress;

    function getBalance(address _address) public view returns(uint) {
        return _address.balance / 1 ether;
    }

    function sendAsset(address payable _to, uint _amount) public {
        _to.transfer(_amount);
    }

    function getAddress() public view returns(address) {
        return myAddress;
    }

    function setAddress() public {
        myAddress = msg.sender;
    }

    function fund() public payable {}
}
