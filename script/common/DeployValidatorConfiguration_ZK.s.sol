// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "src/utils/CreatorTokenTransferValidator.sol";

contract DeployValidatorConfiguration is Script {
    function run() public {

        address defaultOwner = 0x44Cdb1e839A2c0D1E0d4f491a8CB14599D253281;
        
        vm.startBroadcast();
        address validatorConfiguration = address(new CreatorTokenTransferValidatorConfiguration(defaultOwner));
        vm.stopBroadcast();

        console.log("CreatorTokenTransferValidatorConfiguration: ", validatorConfiguration);
    }
}