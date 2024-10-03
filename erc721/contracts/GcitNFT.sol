// contracts/GcitNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GcitNFT is ERC721URIStorage, Ownable {
    uint256 private _nextTokenId;

    constructor() ERC721("Gcit NFT Collection", "GcitNFTToken") Ownable(msg.sender) {}

    function mintItem(
        address recipient,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        require(bytes(tokenURI).length > 0, "Invalid token URI");
        uint256 tokenId = _nextTokenId++;
        _mint(recipient, tokenId);
        _setTokenURI(tokenId, tokenURI);
        return tokenId;
    }
}
