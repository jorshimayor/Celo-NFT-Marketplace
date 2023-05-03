// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CeloNFT is ERC721 {

    constructor() ERC721("CeloNFT", "cNFT") {

        // This code mints 5 NFTs
        for (uint i = 0; i < 5;  i++) {
            _mint(msg.sender, i);
        }
    }

    // This is an hardcoded token URI which will return the same metadata for each data
    function tokenURI(uint) public pure override returns (string memory) {
        return "ipfs://QmTy8w65yBXgyfG2ZBg5TrfB2hPjrDQH3RCQFJGkARStJb";
    }

}