// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
  address public minter;

  event MinterChanged(address indexed from, address to);

  constructor() payable ERC20("Decentralized Bank Currency", "DBC") {
    minter = msg.sender; //only initially
  }
  function passMinterRole(address safeHand) public returns (bool) {
  	require(msg.sender == minter, 'Error, only owner can change pass minter role');
  	minter = safeHand;

    emit MinterChanged(msg.sender, safeHand);
    return true;
  }

  function mint(address account, uint256 amount) public {
		require(msg.sender==minter, 'Error, msg.sender does not have minter role'); //safeHand
		_mint(account, amount);
	}

  
}