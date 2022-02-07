// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155 {
    uint256 public constant GOLD = 1;
    uint256 public constant SILVER = 2;
    uint256 public constant SWORD = 3;
    uint256 public constant SHIELD = 4;
    uint256 public constant THORS_HAMMER = 5;

    constructor(string memory _uri) ERC1155(_uri) {
        _mint(msg.sender, GOLD, 10**18, "");
        _mint(msg.sender, SILVER, 10**27, "");
        _mint(msg.sender, THORS_HAMMER, 1, "");
        _mint(msg.sender, SWORD, 10**9, "");
        _mint(msg.sender, SHIELD, 10**9, "");
    }
}
