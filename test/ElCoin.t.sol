// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/ElCoin.sol";

contract ElCoinTest is Test {
    ElCoin elc;

    function setUp() public {
        elc = new ElCoin(1000000); // 1,000,000 ELC
    }

    function testTotalSupply() public {
        assertEq(elc.totalSupply(), 1000000 * 1e18);
    }

    function testTransfer() public {
        address receiver = address(0xBEEF);
        elc.transfer(receiver, 100 * 1e18);
        assertEq(elc.balanceOf(receiver), 100 * 1e18);
    }
}
