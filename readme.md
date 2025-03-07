# Local Blockchain Development with Hardhat

This repository sets up a local Ethereum-compatible blockchain using **Hardhat**, deploys smart contracts, and interacts with them via the Hardhat console.

---

## 🚀 Getting Started

### **1️⃣ Install Dependencies**
First, install all required dependencies:
```sh
yarn install
```
Or if you're using **npm**:
```sh
npm install
```

### **2️⃣ Start a Local Blockchain**
Run a local Ethereum-compatible blockchain using Hardhat:
```sh
npx hardhat node
```
✅ This starts a local blockchain at **http://127.0.0.1:8545** with pre-funded test accounts.

### **3️⃣ Open Hardhat Console**
To interact with the local blockchain, use:
```sh
yarn hardhat console --network localhost
```
✅ This opens an interactive console where you can call smart contract functions.

### **4️⃣ Deploy a Smart Contract**
Deploy your contract to the local blockchain:
```sh
yarn hardhat run scripts/deploy.js --network localhost
```
✅ After deployment, the console will show the deployed contract address.

---

## 🛠️ Project Structure
```
📂 contracts/        # Solidity smart contracts
📂 scripts/          # Deployment scripts
📂 test/             # Test cases for contracts
📄 hardhat.config.ts # Hardhat configuration file
```

---

## ✅ Next Steps
- Modify smart contracts inside `contracts/`
- Write deployment logic in `scripts/deploy.js`
- Run `yarn test` to test contracts

🚀 **Happy Coding!**

