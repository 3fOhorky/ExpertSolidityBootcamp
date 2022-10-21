// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract HW4Assignment {
    function assignment() public pure returns(uint256) {
        assembly {
            /*. Write some Yul to add 0x07 to 0x08 and 
                store the result at the next free memory location. */
            let freeMemLocation := add(0x80, msize())
            mstore(freeMemLocation, add(0x07, 0x08))
            return(freeMemLocation, 32)
        }
    }
}