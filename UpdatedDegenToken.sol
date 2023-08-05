// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {
    uint256 public constant prizeCost = 100; // Cost of the prize
    
    constructor() ERC20("Degen", "DGN") {}

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function redeem(uint256 amount) public {
        require(amount >= prizeCost, "Insufficient amount to cover the cost");

        // Generate a random number using block timestamp and sender's address
        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % 2;

        if (randomNumber == 0) {
            // Deduct the cost from the user's account
            _burn(msg.sender, prizeCost);

            // Emit an event indicating successful redemption
            emit Redeemed(msg.sender, 1, prizeCost);

            // Log a message indicating successful redemption
            console.log("Redeemed: User %s won the prize, cost %d tokens", msg.sender, prizeCost);
        } else {
            // User didn't win the prize, no tokens deducted

            // Emit an event indicating unsuccessful redemption
            emit Redeemed(msg.sender, 0, 0);

            // Log a message indicating unsuccessful redemption
            console.log("Redeemed: User %s did not win the prize", msg.sender);
        }
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    
    event Redeemed(address indexed user, uint256 prizeId, uint256 cost);
