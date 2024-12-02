// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable(msg.sender){
    mapping(uint256 => uint256) private itemPrices;
    mapping(address => uint256[]) private redeemedItems;

    event DegenMinted(address account, uint256 amount);
    event ItemRedeemed(address indexed account, uint256 item);

    constructor() ERC20("DEGENGameing", "DGN") {
        itemPrices[1] = 249;
        itemPrices[2] = 199;
        itemPrices[3] = 79;
    }

    function mintDegen(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
        emit DegenMinted(account, amount);
    }

    function getDegenBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function transferTokens(address recipient, uint256 amount) external {
        require(amount > 0, "Amount must be greater, Not zero");
        require(balanceOf(msg.sender) >= amount, "Not enough tokens");
        _transfer(msg.sender, recipient, amount);
    }

    function burnDegen(address account, uint256 amount) external {
        require(balanceOf(account) >= amount, "Insufficient tokens");
        _burn(account, amount);
    }

    function exploreItems() public pure returns (string[] memory) {
        string[] memory items = new string[](3);
        items[0] = "1.  Sword Artifacts Set - 259 tokens";
        items[1] = "2. AURA Multiplier - 199 tokens";
        items[2] = "3. Limited Damage Shield - 79 tokens";
        return items;
    }

    function redeemItem(uint256 choice) external payable {
        require(choice > 0 && choice <= 3, "Invalid choice"); 
        uint256 itemPrice = itemPrices[choice];
        require(itemPrice > 0, "Invalid choice");

        require(balanceOf(msg.sender) >= itemPrice, "Insufficient tokens");

        _transfer(msg.sender, owner(), itemPrice);
        redeemedItems[msg.sender].push(choice);

        emit ItemRedeemed(msg.sender, choice);
    }

    function getRedeemedItems(address account) external view returns (uint256[] memory) {
        return redeemedItems[account];
    }
}