// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "https://github.com/chiru-labs/ERC721A/blob/main/contracts/ERC721A.sol";

contract Azuki is ERC721A {
    constructor() ERC721A("Azuki", "AZUKI") {}

    //Base URI 설정
    function _baseURI() internal view virtual override returns (string memory) {
        return 'ipfs://QmZcH4YvBVVRJtdn4RdbaqgspFU8gH6P9vomDpBVpAL3u4/';
        // -> https://ipfs.io/ipfs/QmZcH4YvBVVRJtdn4RdbaqgspFU8gH6P9vomDpBVpAL3u4
    }

    function mint(uint256 quantity) external payable {
        require(msg.value == (0.001 ether * quantity), "MyERC721A : msg.value is not correct");
        // _mint's second argument now takes in a quantity, not a tokenId.
        _mint(msg.sender, quantity);
    }
}