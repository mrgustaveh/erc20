// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {Zepplin} from "../src/Zepplin.sol";

contract TestZepplin is Test {
    Zepplin token_zepplin;

    function setUp() external {
        token_zepplin = new Zepplin(100 ether);
    }

    function hasName() public view {
        assertEq(token_zepplin.name(), "Zepplin");
    }

    function testInitialSupply() public view {
        assert(token_zepplin.totalSupply() != 0);
    }
}
