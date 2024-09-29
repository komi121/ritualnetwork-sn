// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Deploy} from "./Deploy.s.sol";
import "../contracts/SaysGM.paid.sol";

contract Say is Deploy {
    function run() external setUp {
        uint256 amount = vm.envOr("AMOUNT", uint256(1));
        address wallet = vm.envOr("WALLET", deployer);

        SaysGM saysGm = new SaysGM(registry);
        console2.log("Deployed SaysHello: ", address(saysGm));

        saysGm.sayGM(amount, wallet);
    }
}
