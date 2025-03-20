// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Store is Ownable {
    address public owner;

    struct Product {
        uint id;
        string name;
        uint stock;
    }

    Product[] public products;

    constructor() {
        owner = msg.sender;
    }

    function addProduct(uint _id, string memory _name, uint _stock) external {
        products.push(Product(_id, _name, _stock));
    }
}
