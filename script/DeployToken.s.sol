// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Zepplin} from "../src/Zepplin.sol";

contract DeployZepplin is Script {
    function run() external returns (Zepplin) {
        vmSafe.startBroadcast();
        Zepplin _zepplin = new Zepplin(100 ether);
        vmSafe.stopBroadcast();

        return _zepplin;
    }
}
