require("@nomicfoundation/hardhat-toolbox")
require("dotenv").config()

module.exports = {
  solidity: "0.8.21",
  networks: {
    bscTestnet: {
      url: "https://data-seed-prebsc-1-s1.binance.org:8545/",
      chainId: 97,
      accounts: [process.env.PRIVATE_KEY],
    },
    bscMainnet: {
      url: "https://bsc-dataseed.binance.org/",
      chainId: 56,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
}
