//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract XEO4 is ERC20 {
    address public owner;

    constructor(address _owner) ERC20("XeO4", "XEO4") {
        owner = _owner;
        _mint(owner, 1_000_000 * 10**18);
    }

    modifier onlyOwner() {
        require(owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }
}
