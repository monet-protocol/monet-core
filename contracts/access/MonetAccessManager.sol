// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { AccessManager } from "@openzeppelin/contracts/access/manager/AccessManager.sol";

import { Roles } from "contracts/libraries/RolesLib.sol";

/// @title MonetAccessManager
/// @author Cooper Labs
/// @custom:contact security@monet.cash
/// @notice Contract inheriting from OpenZeppelin's AccessManager contract.
contract MonetAccessManager is AccessManager {
    constructor(address owner) AccessManager(owner) { }
}
