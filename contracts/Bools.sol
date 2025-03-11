// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Bools {
    bool public isUserPoor;

    bool public x = true;
    bool public y = false;

    bool public v = (!x);
    bool public b = (!y);

    function amIPoor() public {
        if (msg.sender.balance > 10 ether) {
            isUserPoor = false;
        } else {
            isUserPoor = true;
        }
    }
}
