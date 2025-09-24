// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./Base.s.sol";

contract LabelRole is BaseScript {
    function run() public broadcast {
        accessManager.labelRole(Roles.GOVERNOR_ROLE, "GOVERNOR_ROLE");
        accessManager.labelRole(Roles.GOVERNOR_ROLE_TIMELOCK, "GOVERNOR_ROLE_TIMELOCK");
        accessManager.labelRole(Roles.GUARDIAN_ROLE, "GUARDIAN_ROLE");
        accessManager.labelRole(Roles.GUARDIAN_ROLE_TIMELOCK, "GUARDIAN_ROLE_TIMELOCK");
        accessManager.labelRole(Roles.KEEPER_ROLE, "KEEPER_ROLE");
        accessManager.labelRole(Roles.KEEPER_ROLE_TIMELOCK, "KEEPER_ROLE_TIMELOCK");

        accessManager.labelRole(Roles.EURmo_MINTER_ROLE, "EURmo_MINTER_ROLE");
        accessManager.labelRole(Roles.EURmo_MINTER_ROLE_TIMELOCK, "EURmo_MINTER_ROLE_TIMELOCK");
        accessManager.labelRole(Roles.USDmo_MINTER_ROLE, "USDmo_MINTER_ROLE");
        accessManager.labelRole(Roles.USDmo_MINTER_ROLE_TIMELOCK, "USDmo_MINTER_ROLE_TIMELOCK");
        accessManager.labelRole(Roles.ETHmo_MINTER_ROLE, "ETHmo_MINTER_ROLE");
        accessManager.labelRole(Roles.ETHmo_MINTER_ROLE_TIMELOCK, "ETHmo_MINTER_ROLE_TIMELOCK");
        accessManager.labelRole(Roles.BTCmo_MINTER_ROLE, "BTCmo_MINTER_ROLE");
        accessManager.labelRole(Roles.BTCmo_MINTER_ROLE_TIMELOCK, "BTCmo_MINTER_ROLE_TIMELOCK");
    }
}
