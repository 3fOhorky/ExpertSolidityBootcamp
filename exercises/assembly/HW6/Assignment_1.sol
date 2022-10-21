// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Assignment {
    function getAmount() public payable returns (uint256 value) {
        assembly {
            value := callvalue()
        }
    }
}