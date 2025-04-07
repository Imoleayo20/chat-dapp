## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
# 🗨️ Chat dApp

A fully decentralized chat application built with **Foundry**, **Solidity**, and **Ethereum**.

## 🚀 Features

- Send and store messages on-chain
- Ethereum wallet login (MetaMask)
- React + Vite frontend
- Dark mode UI
- IPFS integration for storing message content (coming soon)

## 🛠️ Tech Stack

- [Foundry](https://book.getfoundry.sh/) for smart contract development
- [Solidity](https://soliditylang.org/) for writing contracts
- [Alchemy](https://alchemy.com/) & Sepolia testnet
- [React](https://reactjs.org/) + [Vite](https://vitejs.dev/) for frontend
- [Ethers.js](https://docs.ethers.org/) for web3 interactions

## 📦 Getting Started

Clone the repo:

```bash
git clone https://github.com/Imoleayo20/chat-dapp.git
cd chat-dapp

🧪 Foundry (Smart Contracts)

forge install
forge build
forge test

🌐 Frontend (React + Vite)

cd frontend
npm install
npm run dev

📄 License

MIT
---

You can run:

```bash
nano README.md
