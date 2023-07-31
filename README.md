# Degen Gaming Avalanche ERC-20 Token

## Overview

Degen Gaming Avalanche ERC-20 Token is an Avalanche-based ERC-20 token that serves as a reward and utility token within the Degen Gaming platform. The token contract provides the necessary functionality to create new tokens, transfer them between users, allow token redemption for in-game items, check token balances, and burn tokens when they are no longer needed.

## Features

- Minting new tokens: The owner can create and distribute new tokens as rewards.
- Transferring tokens: Users can transfer their tokens to other addresses.
- Redeeming tokens: Users can redeem their tokens for in-game items within the Degen Gaming platform.
- Checking token balance: Users can check their token balance at any time.
- Burning tokens: Any token holder can burn tokens they own that are no longer needed.

## Getting Started

Follow these steps to get started with the Degen Gaming Avalanche ERC-20 Token project:

1. Clone the repository:
```
git clone https://github.com/codebreaker-pk/DegenToken-Avalanche.git
cd DegenToken.
```


## Compilation

To compile the smart contract, run:

```bash
npx hardhat compile
```


## Testing on Avalanche Fuji Testnet
To run tests on the Avalanche Fuji Testnet, make sure you have the Avalanche Fuji Testnet deployed and an Avalanche wallet. Edit the hardhat.config.js file to set up your wallet credentials and network details for the "fuji" network.

After configuration, run the tests on the Avalanche Fuji Testnet with the following command:

```bash
npx hardhat test --network fuji
```

## Deployment
To deploy the Degen Gaming Avalanche ERC-20 Token to the Avalanche network, you need to have the Avalanche Fuji Testnet deployed and an Avalanche wallet. Edit the hardhat.config.js file to set up your wallet credentials and network details.

After configuration, deploy the contract to the Avalanche Fuji Testnet with the following command:


```bash
npx hardhat run --network fuji scripts/deploy.js
```
## Verification on SnowTrace
After deploying the contract to the Avalanche Fuji Testnet, you can verify the smart contract on SnowTrace for transparency and security. Use the contract's address and the source code provided in the verification process.

## Author

**Prashant Kumar**

- GitHub: [github.com/codebreaker-pk](https://github.com/codebreaker-pk)
- Email: official.pk.900@gmail.com
## License
This project is licensed under the [MIT License](LICENSE)


