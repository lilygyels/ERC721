// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC1155, Ownable {
    constructor()
        ERC1155(
            "https://rose-rear-quokka-157.mypinata.cloud/ipfs/QmVozSpFh3C5VcTeMAGfiMzDQweqzKbQu2evMK4EeFW6qQ"
        )
        Ownable(msg.sender)  // Pass msg.sender to Ownable constructor
    {
        // Mint 10 tokens of type 0 to the contract owner
        _mint(msg.sender, 0, 10, "");
    }

    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public onlyOwner {
        _mint(account, id, amount, data);
    }

    function burn(
        address account,
        uint256 id,
        uint256 amount
    ) public onlyOwner {
        _burn(account, id, amount);
    }
}
