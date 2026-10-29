// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract CollectionConfig { string public baseURI; uint256 public immutable maxSupply; constructor(string memory uri, uint256 cap) { baseURI = uri; maxSupply = cap; } }
