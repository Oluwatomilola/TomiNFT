//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./TomiNFT.sol";

contract Factory {
   TomiNFT[] public TomiNFTArray;

  function mintNFT(address recipient, string memory tokenURI)
        public
        onlyOwner
        returns (uint256)
    {
        require(recipient != address(0), "Recipient cannot be zero address");
        require(bytes(tokenURI).length > 0, "Token URI cannot be empty");

        _tokenIds = 1; // Set to 1 for single NFT
        uint256 newItemId = _tokenIds;
        _safeMint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        emit NFTMinted(recipient, newItemId, tokenURI);
        return newItemId;
    }
}