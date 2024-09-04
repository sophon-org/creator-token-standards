// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "src/utils/EOARegistry.sol";

contract DeployEOARegistry is Script {
    function run() public {

        vm.startBroadcast();
        address registry = address(new EOARegistry());
        vm.stopBroadcast();

        console.log("EOARegistry: ", registry);

        // if (expectedAddress != registry) {
        //     revert("Unexpected deploy address");
        // }
    }
}