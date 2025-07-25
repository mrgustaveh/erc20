// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Zepplin is ERC20 {
    constructor(uint256 initialSupply) ERC20("Zepplin", "ZEPP") {
        _mint(msg.sender, initialSupply);
    }
}
