# DEGENToken Smart Contract

This repository contains the **DEGENToken** smart contract, designed to manage in-game token economies. It provides functionalities such as token minting, transferring, burning, and redeeming for exclusive in-game items. The contract adheres to the ERC20 standard using OpenZeppelin libraries, ensuring reliability and security.

---

## Introduction

The DEGENToken (**DGN**) is a utility token for gaming ecosystems, allowing players to earn, spend, and trade tokens. This contract enhances the player experience with token-based interactions and serves as a foundational building block for integrating blockchain technology into gaming platforms.

---

## Features

1. **ERC20 Token Standard Compliance**  
   Built on OpenZeppelin's ERC20 and ERC20Burnable contracts.

2. **Minting and Burning**  
   - Tokens can be minted by the owner to any account.  
   - Players can burn their tokens to reduce the circulating supply.

3. **Item Redemption**  
   Redeem in-game items with tokens, encouraging token usage within the ecosystem.

4. **User-Friendly Utilities**  
   - Check token balances.  
   - Transfer tokens between accounts.  
   - Track redeemed items for any user.

5. **Deployed on Avalanche Fuji Testnet**  
   The contract is deployed on the **Avalanche Fuji Testnet**, providing a scalable and efficient blockchain environment.

---

## Deployment Details

- **Network:** Avalanche Fuji Testnet  
- **Contract Address:** `0x0703e369e57DcB294423BEd0F79680d859944bAa`  
- **Deployment Tool:** Remix IDE  

You can interact with the contract using the address above and any compatible wallet or dApp.

---

## Token Details

- **Name:** DEGENGameing  
- **Symbol:** DGN  

---

## Contract Methods

### Mint Tokens
- **Function:** `mintDegen(address account, uint256 amount)`  
- **Description:** Allows the owner to mint tokens to a specified account.  
- **Event:** Emits `DegenMinted`.

---

### Transfer Tokens
- **Function:** `transferTokens(address recipient, uint256 amount)`  
- **Description:** Enables token transfers between accounts.  
- **Validation:**  
  - Amount must be greater than 0.  
  - Sender must have sufficient tokens.

---

### Burn Tokens
- **Function:** `burnDegen(address account, uint256 amount)`  
- **Description:** Burns tokens from an account, reducing the circulating supply.  
- **Validation:** Account must have sufficient tokens.

---

### Explore Items
- **Function:** `exploreItems()`  
- **Description:** Lists the redeemable in-game items and their token prices.  
#### Items:
1. **Sword Artifacts Set:** 259 tokens  
2. **AURA Multiplier:** 199 tokens  
3. **Limited Damage Shield:** 79 tokens  

---

### Redeem Items
- **Function:** `redeemItem(uint256 choice)`  
- **Description:** Allows users to redeem in-game items by spending tokens.  
- **Validation:**  
  - Sufficient token balance required.  
  - Valid item choice (1–3).  
- **Event:** Emits `ItemRedeemed`.

---

### Balance and Item Tracking
1. **Check Token Balance**  
   - **Function:** `getDegenBalance()`  
   - **Description:** Returns the token balance of the caller.  

2. **View Redeemed Items**  
   - **Function:** `getRedeemedItems(address account)`  
   - **Description:** Lists items redeemed by the specified account.

---

## Requirements

### Prerequisites
- **Remix IDE:** For deploying the contract.  
- **MetaMask:** To connect with the Avalanche Fuji Testnet.  
- **AVAX Tokens:** For paying gas fees during transactions.

---

## How to Deploy and Use

1. **Deployment**  
   - Open the contract in Remix IDE.  
   - Compile using Solidity version `^0.8.18`.  
   - Connect to the Avalanche Fuji Testnet via MetaMask.  
   - Deploy the contract.

2. **Interacting with the Contract**  
   - Use the deployed address: `0x0703e369e57DcB294423BEd0F79680d859944bAa`.  
   - Use Remix or a custom frontend to call the contract methods.

---

## Explanation Video

Watch the detailed explanation and demonstration of this contract on [YouTube](https://youtu.be/bUQxZab2fF0).

---

## Conclusion

The DEGENToken smart contract is a robust solution for implementing blockchain-based economies in gaming. Its functionality allows players to actively engage with the ecosystem through tokenized transactions, creating an immersive experience. Deployed on the Avalanche Fuji Testnet, it ensures efficiency and scalability.

---

## Author 

- Bharat Kumar

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.
