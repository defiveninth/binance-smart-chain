const { ethers } = require("hardhat");

async function main() {
    const contractAddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
    const contract = await ethers.getContractAt("LearnSolidity", contractAddress);

    const value = await contract.getNumber();
    console.log("Stored Value:", value.toString());

    const tx = await contract.setNumber(100);
    await tx.wait();
    console.log("Updated Value to 100!");

	const value2 = await contract.getNumber();
    console.log("Stored Value:", value2.toString());
}

main().catch(console.error);
