Check Your Wallet Balance
Run the following in the Hardhat console to verify the balance:

npx hardhat console --network bscTestnet
Then inside the console, run:

(await ethers.provider.getBalance("YOUR_WALLET_ADDRESS")).toString();
If it returns 0, you need to fund your wallet.

Get Free Test BNB
Go to the Binance Smart Chain Testnet Faucet:
👉 https://testnet.bnbchain.org/faucet-smart

Enter your wallet address (the one in .env as PRIVATE_KEY).
Click Give me BNB (choose 0.1 BNB if available).
Wait for the transaction to complete.
Try Deploying Again
Once you receive Test BNB, rerun the deployment:

npx hardhat run scripts/deploy.js --network bscTestnet
Let me know if you need further help! 🚀