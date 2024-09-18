// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "src/utils/CreatorTokenTransferValidator.sol";

contract DeployValidator is Script {
    function run() public {
        address validatorConfiguration = 0x44e8D4767dc8311367CB74c032ec6E51416d5db1;
        address eoaRegistry = 0x0c0e6D751AF413B3f8ba0Aa916AE1Ce8Dc68d3Ee;
        string memory validatorName = "CreatorTokenTransferValidator";
        string memory validatorVersion = "3";

        address defaultOwner = 0x44Cdb1e839A2c0D1E0d4f491a8CB14599D253281;
        
        vm.startBroadcast();
        address validator = address(new CreatorTokenTransferValidator(defaultOwner, eoaRegistry, validatorName, validatorVersion, validatorConfiguration));
        vm.stopBroadcast();

        console.log("CreatorTokenTransferValidator: ", validator);

        // if (expectedAddress != validator) {
        //     revert("Unexpected deploy address");
        // }
    }
}