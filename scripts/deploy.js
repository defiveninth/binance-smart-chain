const lib = require("hardhat")

async function main() {
	const [deployer] = await lib.ethers.getSigners()
	console.log("Deploying contracts with the account:", deployer.address)

	const Token = await lib.ethers.getContractFactory("Token")
	const token = await Token.deploy()
	await token.waitForDeployment()
	console.log("Token deployed to:", await token.getAddress())

	// const SimpleStorage = await ethers.getContractFactory("SimpleStorage")
	// const simpleStorage = await SimpleStorage.deploy()
	// await simpleStorage.waitForDeployment()
	// console.log("SimpleStorage deployed to:", await simpleStorage.getAddress())
}

main()
	.then(() => process.exit(0))
	.catch((error) => {
		console.error(error)
		process.exit(1)
	})
