// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDC is ERC20 {
    constructor() ERC20("USD Coin", "USDC") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 6; // USDC typically uses 6 decimal places
    }
}
