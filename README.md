# DegenToken Smart Contract

DegenToken is an Ethereum-based ERC20 token contract with additional features for minting, transferring, and redeeming tokens. It also includes functionality for in-game store redemptions.

## Features

- Minting tokens by the contract owner.
- Transferring tokens between addresses.
- Redeeming tokens for in-game store items with randomized prize selection.
- Balance checking for token holders.
- Burning tokens to reduce total supply.

## Getting Started

### Deploying on Avalanche Fuji C-Chain

1. Open your project in VS Code.

2. Deploy the contract to the Avalanche Fuji C-Chain:
**npx hardhat run scripts/deploy.js --network fuji**

Copy the deployed contract address from the terminal.

## Remix Setup
- Go to Remix.
- Create a new Solidity file named DegenToken.sol.

- Copy and paste the content of the DegenToken.sol contract from this repository into the Remix editor.

## Usage
- To use the DegenToken contract in Remix:

- Connect to the Avalanche Fuji C-Chain in Remix:

- In the Remix sidebar, navigate to the "Deploy & Run Transactions" tab.
- In the "Environment" dropdown, select "Injected Web3" and connect to the Avalanche Fuji C-Chain.
- Paste the contract address copied earlier into the "At Address" field.
## Deploy the contract:

- Select the DegenToken contract from the dropdown.
- Deploy the contract by clicking the "Deploy" button.
## Interact with the contract:

- Use the contract interface to call functions, mint tokens, transfer tokens, redeem prizes, etc.

## Author

**Prashant Kumar**

- GitHub: [github.com/codebreaker-pk](https://github.com/codebreaker-pk)
- Email: official.pk.900@gmail.com
## License
This project is licensed under the [MIT License](LICENSE)


