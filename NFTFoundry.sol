// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract NFTFoundry {
    uint256 public nextTokenId; mapping(uint256 => address) public ownerOf; mapping(uint256 => string) public tokenURI; mapping(uint256 => address) public getApproved;
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    function mint(string calldata uri) external returns (uint256 id) { id = nextTokenId++; ownerOf[id] = msg.sender; tokenURI[id] = uri; emit Transfer(address(0), msg.sender, id); }
    function approve(address to, uint256 id) external { require(ownerOf[id] == msg.sender, "owner only"); getApproved[id] = to; }
    function transferFrom(address from, address to, uint256 id) external { require(ownerOf[id] == from && (msg.sender == from || msg.sender == getApproved[id]), "not authorized"); ownerOf[id] = to; delete getApproved[id]; emit Transfer(from, to, id); }
}
