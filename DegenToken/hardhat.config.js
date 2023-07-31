// hardhat.config.js

require('dotenv').config();
require("@nomicfoundation/hardhat-toolbox");
const privateKey = '8dd363b2bd3a13458a708a5b5afd9a88e34544473d8c21463cde3465b266f807'; // Replace with the private key of your AVAX address

module.exports = {
  defaultNetwork: 'hardhat',
  networks: {
    hardhat: {
      forking: {
        url: 'https://api.avax-test.network/ext/bc/C/rpc',
        blockNumber: 15333000, // Choose a block number to fork from
      },
      gasPrice: 225000000000, // Set a custom gas price for testing
    },
    fuji: {
      url: 'https://api.avax-test.network/ext/bc/C/rpc',
      gasPrice: 225000000000,
      chainId: 43113,
      accounts: ["8dd363b2bd3a13458a708a5b5afd9a88e34544473d8c21463cde3465b266f807"], // Use your wallet private key for deployment
    },
  },
  solidity: {
    version: '0.8.0',
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  etherscan: {
    apiKey: process.env.SNOWTRACE_API_KEY,
  },
};
