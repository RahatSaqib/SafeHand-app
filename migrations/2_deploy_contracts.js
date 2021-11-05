const Token = artifacts.require("Token");
const SafeHand = artifacts.require("SafeHand");

module.exports = async function(deployer) {
	//deploy Token
	await deployer.deploy(Token)

	//assign token into variable to get it's address
	const token = await Token.deployed()
	
	//pass token address for dBank contract(for future minting)
	await deployer.deploy(SafeHand, token.address)

	//assign dBank contract into variable to get it's address
	const safeHand = await SafeHand.deployed()

	//change token's owner/minter from deployer to dBank
	await token.passMinterRole(safeHand.address)
};