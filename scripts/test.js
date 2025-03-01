async function main() {
	const LearnSolidity = await ethers.getContractFactory("LearnSolidity")
	const contract = await LearnSolidity.deploy()
	console.log("Contract deployed at:", contract.target)
}
main().catch(console.error)
