// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract gravityERC20 is ERC20 {
    constructor() ERC20("gravityERC20", "METT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
}