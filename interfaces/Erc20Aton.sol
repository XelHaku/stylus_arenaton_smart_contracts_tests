/**
 * This file was automatically generated by Stylus and represents a Rust program.
 * For more information, please see [The Stylus SDK](https://github.com/OffchainLabs/stylus-sdk-rs).
 */

// SPDX-License-Identifier: MIT-OR-APACHE-2.0
pragma solidity ^0.8.23;

interface IErc20Aton  {
    function number() external view returns (uint256);

    function name() external view returns (string memory);

    function vaultAddress() external view returns (address);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function owner() external view returns (address);

    function transferOwnership(address new_owner) external;

    function initialize() external returns (bool);

    function setVault(address vault_address) external returns (bool);

    function vault() external view returns (address);

    function transfer(address to, uint256 amount) external returns (bool);

    function mintAton() external payable returns (bool);

    function swap(uint256 amount) external returns (bool);

    function updateStakeEngine(address account, bool status) external;

    function isStakeEngine(address account) external view returns (bool);

    error Zero(address);

    error UnauthorizedAccount(address);

    error ERC20InsufficientBalance(address, uint256, uint256);

    error ERC20InvalidSender(address);

    error ERC20InvalidReceiver(address);

    error ERC20InsufficientAllowance(address, uint256, uint256);

    error ERC20InvalidSpender(address);

    error ERC20InvalidApprover(address);
}