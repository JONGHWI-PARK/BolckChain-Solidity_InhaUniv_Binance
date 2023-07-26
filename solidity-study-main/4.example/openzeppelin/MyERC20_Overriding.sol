// SPDX-License-Identifier: MIT
pragma solidity  >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract  jackERC20 is ERC20, Ownable {
    uint8 private _decimals = 6;
    address public _owner;

    // 1000000000(ETH, 'METT(단위)') * 10 ** 18
    // 1 ETH = 1 * 10 ** 18 (Wei)
    constructor() ERC20("jackERC20Token", "METT") Ownable() {
        _mint(msg.sender, 10000 * 10 ** decimals());
        // _owner = msg.sender;
    }

    function mint(address to, uint256 amount) external onlyOwner {
        // TODO:
        // require(condition, "");
        // condition = address != msg.sender
        // require(_owner != msg.sender, "you are not owner");
        _mint(to, amount);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

}