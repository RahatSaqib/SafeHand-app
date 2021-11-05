// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
  address public minter;

  event MinterChanged(address indexed from, address to);

  constructor() public payable ERC20("Decentralized Bank Currency", "DBC") {
    minter = msg.sender; //only initially
  }
  function passMinterRole(address mintRoleAddress) public returns (bool) {
  	require(msg.sender==mintRoleAddress, 'Error, only owner can change pass minter role');
  	minter = mintRoleAddress;

    emit MinterChanged(msg.sender, mintRoleAddress);
    return true;
  }

  function mint(address account, uint256 amount) public {
		require(msg.sender==minter, 'Error, msg.sender does not have minter role'); //mintRoleAddress
		_mint(account, amount);
	}

  
}