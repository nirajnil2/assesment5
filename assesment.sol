// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract JUNK is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner) ERC20("JUNK", "JNK") Ownable(initialOwner) {
        _mint(msg.sender, 10000 * 10 ** decimals());
        //decimals() function typically returns the number of decimal 
        //places that the token uses (e.g., 18 for most ERC-20 tokens).
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
