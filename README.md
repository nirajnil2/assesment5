# JUNK Token (JNK)

JUNK is an ERC-20 token with burnable capabilities and an owner-based minting feature. This project leverages OpenZeppelin Contracts to ensure security and standardization.

## Overview

- **Token Name:** JUNK
- **Token Symbol:** JNK
- **Initial Supply:** 10,000 JUNK
- **Decimals:** 18 (standard for most ERC-20 tokens)

## Features

- **Burnable:** Allows tokens to be irreversibly burned, reducing the total supply.
- **Mintable:** Allows the contract owner to mint new tokens.

## Getting Started

### Prerequisites

To use and develop this project, you need to have the following installed:

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [Hardhat](https://hardhat.org/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/junk-token.git
   cd junk-token
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network localhost
npx hardhat test
// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract JUNK is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner) ERC20("JUNK", "JNK") Ownable(initialOwner) {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
License
This project is licensed under the MIT License. See the LICENSE file for details.

Contributing
Fork the repository
Create a new branch (git checkout -b feature-branch)
Commit your changes (git commit -am 'Add some feature')
Push to the branch (git push origin feature-branch)
Create a new Pull Request
Acknowledgements
This project utilizes OpenZeppelin Contracts for secure and industry-standard smart contract implementations.

Replace `yourusername` in the clone URL with your actual GitHub username. This `README.md` provides an overview, setup instructions, usage details, and other essential information for users and contributors.
