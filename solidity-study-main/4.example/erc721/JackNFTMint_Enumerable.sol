// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract JackNFT is ERC721Enumerable, Ownable, Pausable {
    constructor() ERC721("MMNFT", "MMNFT") {
        for (int i=0; i < 10; i++) {
            _safeMint(msg.sender, uint256(i+1));
        }
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function Pause() public {
        _pause();
    }

    function UnPause() public {
        _unpause();
    }

}