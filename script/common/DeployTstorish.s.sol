// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "src/utils/Tstorish.sol";

contract DeployTstorish is Script {
    function run() public {

        
        vm.startBroadcast();
        address registry = address(new Tstorish());
        vm.stopBroadcast();

        console.log("Tstorish: ", registry);
    }
}