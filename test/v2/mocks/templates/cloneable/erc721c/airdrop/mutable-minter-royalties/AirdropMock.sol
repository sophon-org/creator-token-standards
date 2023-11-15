// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../../ERC721CMetadataInitializable.sol";
import "src/minting/AirdropMint.sol";
import "src/programmable-royalties/MutableMinterRoyalties.sol";

contract AirdropMock is ERC721CMetadataInitializable, AirdropMintInitializable, MutableMinterRoyaltiesInitializable {
    constructor() ERC721("", "") {}

    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ERC721CInitializable, MutableMinterRoyaltiesBase)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function _mintToken(address to, uint256 tokenId) internal virtual override {
        _onMinted(to, tokenId);
        _mint(to, tokenId);
    }
}
