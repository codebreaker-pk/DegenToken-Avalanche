const fs = require('fs');
const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const DegenToken = await ethers.getContractFactory("DegenToken");
  const degenToken = await DegenToken.deploy();

  await degenToken.deployed();

  console.log("DegenToken deployed to:", degenToken.address);
  process.exit(0);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});


