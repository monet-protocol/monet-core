// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./Base.s.sol";

contract GrantRole is BaseScript {
    address dao = 0xBabB038737A7Ae0DcA02075E79ed5B7704C29827;
    address keeper = 0x86e8f2347ba704a9a8fB8DBa57fE2680EB443962;

    function run() public broadcast {
        accessManager.grantRole(ADMIN_ROLE, dao, 0);
        accessManager.grantRole(Roles.GOVERNOR_ROLE, dao, 0);
        accessManager.grantRole(Roles.GOVERNOR_ROLE_TIMELOCK, dao, 0);
        accessManager.grantRole(Roles.GUARDIAN_ROLE, dao, 0);
        accessManager.grantRole(Roles.GUARDIAN_ROLE_TIMELOCK, dao, 0);
        accessManager.grantRole(Roles.KEEPER_ROLE, dao, 0);
        accessManager.grantRole(Roles.KEEPER_ROLE_TIMELOCK, dao, 0);
        // accessManager.grantRole(Roles.KEEPER_ROLE, keeper, 0);
        // accessManager.grantRole(Roles.KEEPER_ROLE_TIMELOCK, keeper, 0);
    }
}
