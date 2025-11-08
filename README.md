# Project 1: The Public Notary

### Description

A simple smart contract deployed on the Ethereum (Sepolia) test network that acts as a public, immutable notary. It allows any user to write a short message to the blockchain, where it is stored forever along with their wallet address and a timestamp.

This project is the first in my 6-month master-class to learn full-stack AI-powered blockchain development.

---

### Core Concepts Learned

* **Solidity Basics:** Writing a smart contract using `pragma`, `contract`, `struct`, and `arrays`.
* **State Variables:** Understanding `msg.sender` (the caller's address) and `block.timestamp` (the time of the transaction).
* **Functions:** Creating a `public` write function (`writeMessage`) to add data to the blockchain.
* **Public Getters:** How Solidity automatically creates `public` "getter" functions for public state variables (like `allEntries`).
* **Immutability:** Understanding that once deployed, this code cannot be changed.

---

### Tools Used

* **Solidity (v0.8.20):** The language for writing the smart contract.
* **Remix IDE:** In-browser IDE for compiling and testing the contract.
* **MetaMask:** Browser wallet used to pay for gas fees and interact with the deployed contract.
* **Sepolia Testnet:** The public test network where this contract is deployed.

---

### Deployment

This contract is permanently deployed and verified on the Sepolia test network.

* **Contract Address:** `0x0418206aF664d69808F2D6358be5dC83541321AD`
* **Etherscan Link:** `https://sepolia.etherscan.io/address/0x0418206aF664d69808F2D6358be5dC83541321AD`

---

### How to Interact

Anyone can interact with this contract using Remix or any Etherscan-like tool.

1.  **Read an Entry:** Call the `allEntries(uint256 index)` function with the index number you wish to see (e.g., `0`, `1`, `2`...). This is a free "read" operation.
2.  **Write an Entry:** Call the `writeMessage(string message)` function with your message. This is a "write" operation and will require a small (test) gas fee to execute.
