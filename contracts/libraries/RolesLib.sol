// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title RolesLib
/// @author Cooper Labs
/// @custom:contact security@monet.cash
/// @notice Library exposing base roles for Monet Access Manager contracts.
library Roles {
    uint64 constant GOVERNOR_ROLE = 10;
    uint64 constant GOVERNOR_ROLE_TIMELOCK = 11;
    uint64 constant GUARDIAN_ROLE = 20;
    uint64 constant GUARDIAN_ROLE_TIMELOCK = 21;
    uint64 constant KEEPER_ROLE = 30;
    uint64 constant KEEPER_ROLE_TIMELOCK = 31;
    uint64 constant EURmo_MINTER_ROLE = 100;
    uint64 constant EURmo_MINTER_ROLE_TIMELOCK = 105;
    uint64 constant USDmo_MINTER_ROLE = 110;
    uint64 constant USDmo_MINTER_ROLE_TIMELOCK = 115;
    uint64 constant ETHmo_MINTER_ROLE = 120;
    uint64 constant ETHmo_MINTER_ROLE_TIMELOCK = 125;
    uint64 constant BTCmo_MINTER_ROLE = 130;
    uint64 constant BTCmo_MINTER_ROLE_TIMELOCK = 135;
}
