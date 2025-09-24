// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./Base.s.sol";

contract SetAdminRole is BaseScript {
    function run() public broadcast {
        accessManager.grantRole(0, 0xBabB038737A7Ae0DcA02075E79ed5B7704C29827, 0);
        accessManager.setRoleAdmin(Roles.EURmo_MINTER_ROLE, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.EURmo_MINTER_ROLE_TIMELOCK, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.USDmo_MINTER_ROLE, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.USDmo_MINTER_ROLE_TIMELOCK, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.ETHmo_MINTER_ROLE, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.ETHmo_MINTER_ROLE_TIMELOCK, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.BTCmo_MINTER_ROLE, Roles.GOVERNOR_ROLE);
        accessManager.setRoleAdmin(Roles.BTCmo_MINTER_ROLE_TIMELOCK, Roles.GOVERNOR_ROLE);
    }
}
