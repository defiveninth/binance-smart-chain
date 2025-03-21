// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Store is Ownable {
    struct Product {
        uint256 id;
        string name;
        uint256 stock;
        uint256 price;
    }

    Product[] public products;

    error IdAlreadyExist();
    error IdDoesNotExist();

    constructor(address initialOwner) Ownable(initialOwner) {}

    function withdraw() external onlyOwner {
        uint balance = address(this).balance;
        require(balance > 0, "You don't have any balance to withdraw");
        
        payable(msg.sender).transfer(balance);
    }

    function addProduct(
        uint256 _id,
        string memory _name,
        uint256 _stock,
        uint256 _price
    ) external onlyOwner {
        require(!isIdExist(_id), IdAlreadyExist());

        products.push(Product(_id, _name, _stock, _price));
    }

    function deleteProduct(uint _id) external onlyOwner {
        (bool status, uint index) = findIndexById(_id);
        require(status, IdDoesNotExist());

        products[index] = products[products.length - 1];
        products.pop();
    }

    function updatePrice(uint256 _id, uint256 _price) external onlyOwner {
        Product storage product = findProduct(_id);
        product.price = _price;
    }

    function updateStock(uint _id, uint _stock) external onlyOwner {
        Product storage product = findProduct(_id);
        product.stock = _stock;
    }

    function getPrice(uint _id) public view returns (uint) {
        return findProduct(_id).price;
    } 

    function getStock(uint _id) public view returns (uint) {
        return findProduct(_id).stock;
    }

    function findProduct(uint256 _id) internal view returns (Product storage) {
        for (uint256 i = 0; i < products.length; i++) {
            if (_id == products[i].id) {
                return products[i];
            }
        }

        revert IdDoesNotExist();
    }

    function isIdExist(uint _id) internal view returns (bool) {
        for (uint256 i = 0; i < products.length; i++) {
            if (_id == products[i].id) {
                return true;
            }
        }

        return false;
    }

    function findIndexById(uint _id) internal view returns (bool, uint256) {
        for (uint256 i = 0; i < products.length; i++) {
            if (_id == products[i].id) {
                return (true, i);
            }
        }

        return (false, 0);
    }
}
