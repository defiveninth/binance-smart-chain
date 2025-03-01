const hre = require("hardhat")

async function main() {
	const BNBToken = await hre.ethers.getContractFactory("BNBToken")
	const token = await BNBToken.deploy()
	await token.deployed()
	console.log(`BNBToken deployed at: ${token.address}`)
}

main()
	.then(() => process.exit(0))
	.catch((error) => {
		console.error(error)
		process.exit(1)
	})
