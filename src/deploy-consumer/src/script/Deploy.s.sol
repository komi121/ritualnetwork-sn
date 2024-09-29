// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";

contract Deploy is Script {
    uint256 public privateKey = vm.envUint("PRIVATE_KEY");
    address public registry = vm.envAddress("REGISTRY");

    address public deployer = vm.addr(privateKey);

    modifier setUp() {
        require(privateKey != 0, "PRIVATE_KEY not set");
        console2.log("Loaded deployer: ", deployer);

        vm.startBroadcast(privateKey);
        _;
        vm.stopBroadcast();
    }
}
