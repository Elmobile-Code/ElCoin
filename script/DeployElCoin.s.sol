// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/ElCoin.sol";

contract DeployElCoin is Script {
    function run() external {
        vm.startBroadcast();
        new ElCoin(1000000); // Deploy with 1,000,000 ELC
        vm.stopBroadcast();
    }
}
