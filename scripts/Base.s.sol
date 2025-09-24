// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Script, console2 } from "@forge-std/Script.sol";

import { IAccessManager } from "@openzeppelin/contracts/access/manager/IAccessManager.sol";
import { Roles } from "contracts/libraries/RolesLib.sol";

contract BaseScript is Script {
    /// @dev The address of the transaction broadcaster.
    address internal broadcaster;
    uint64 public constant ADMIN_ROLE = type(uint64).min;

    IAccessManager accessManager = IAccessManager(0x1B35E6C9F263b4930f007FE018C23b0A339Fb539);

    modifier broadcast() {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        console2.log("Private Key", privateKey);
        vm.startBroadcast(privateKey);
        broadcaster = vm.addr(privateKey);
        _;
        vm.stopBroadcast();
    }
}
