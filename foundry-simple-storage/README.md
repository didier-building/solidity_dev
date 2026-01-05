# Foundry Simple Storage

A learning project demonstrating smart contract development using Foundry framework. This project implements a basic storage contract that allows users to store and retrieve their favorite numbers, associate numbers with names, and manage a list of people.

## 🎯 Learning Objectives

This project covers the following concepts:
- Foundry project structure and setup
- Writing Solidity smart contracts
- Contract deployment using Foundry scripts
- Working with structs and mappings in Solidity
- Deploying to local networks (Anvil) and testnets (Sepolia)
- Using zkSync local node for L2 development

## 📋 Project Overview

The `SimpleStorage` contract includes:
- **Storage**: Store and retrieve a favorite number
- **People List**: Maintain a dynamic array of people with their favorite numbers
- **Name Mapping**: Associate names with favorite numbers using a mapping

### Contract Features

```solidity
- store(uint256): Store a favorite number
- retrieve(): Retrieve the stored favorite number
- addPerson(string, uint256): Add a person with their favorite number
- listOfPeople: Array of Person structs
- nameToFavoriteNumber: Mapping from names to favorite numbers
```

## 🛠️ Tech Stack

- **Foundry**: Smart contract development framework
- **Solidity**: Version 0.8.19
- **Forge**: Testing and building
- **Cast**: Command-line tool for EVM interaction
- **Anvil**: Local Ethereum node

## 📦 Installation

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation)

### Setup

```bash
# Clone the repository
git clone https://github.com/didier-building/solidity_dev.git
cd solidity_dev/foundry-simple-storage

# Install dependencies
forge install

# Build the project
forge build
```

## 🚀 Usage

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Local Deployment (Anvil)

```shell
# Start local node
anvil

# In another terminal, deploy
forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://localhost:8545 --private-key <anvil_private_key> --broadcast
```

### Testnet Deployment (Sepolia)

```shell
forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage \
  --rpc-url $SEPOLIA_RPC_URL \
  --account defaultKey \
  --sender 0xYourAddress \
  --broadcast
```

### zkSync Local Node Deployment

```shell
# Ensure zkSync local node is running
# Deploy using zkSync RPC
forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage \
  --rpc-url http://127.0.0.1:3050 \
  --broadcast
```

## 🔍 Interacting with the Contract

Use Cast to interact with deployed contracts:

```shell
# Store a favorite number
cast send <CONTRACT_ADDRESS> "store(uint256)" 42 --rpc-url <RPC_URL> --private-key <PRIVATE_KEY>

# Retrieve the stored number
cast call <CONTRACT_ADDRESS> "retrieve()" --rpc-url <RPC_URL>

# Add a person
cast send <CONTRACT_ADDRESS> "addPerson(string,uint256)" "Alice" 7 --rpc-url <RPC_URL> --private-key <PRIVATE_KEY>
```

## 📁 Project Structure

```
.
├── src/
│   └── SimpleStorage.sol          # Main contract
├── script/
│   └── DeploySimpleStorage.s.sol  # Deployment script
├── test/
├── lib/
│   └── forge-std/                 # Forge standard library
├── foundry.toml                   # Foundry configuration
└── README.md
```

## 📚 Learning Resources

- [Foundry Book](https://book.getfoundry.sh/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Ethereum Development Documentation](https://ethereum.org/en/developers/docs/)

## 🌐 Networks Tested

- ✅ Local Anvil (Chain ID: 31337)
- ✅ Sepolia Testnet (Chain ID: 11155111)
- ✅ zkSync Local Node (Chain ID: 270)

## 🎓 Key Takeaways

1. **Foundry Setup**: Understanding Foundry's project structure and tooling
2. **Contract Development**: Writing clean, documented Solidity code
3. **Deployment Scripts**: Creating reusable deployment scripts
4. **Network Interaction**: Working with different EVM-compatible networks
5. **L2 Development**: Introduction to zkSync and Layer 2 solutions

## 📝 Notes

This project was created as a learning exercise to understand:
- Foundry development workflow
- Smart contract fundamentals
- Deployment strategies across different networks
- Version control and project documentation

## 🤝 Contributing

This is a personal learning project, but suggestions and improvements are welcome!

## 📄 License

MIT

---

**Learning Journey**: This project represents the foundational step in mastering Ethereum smart contract development with Foundry. 🚀
