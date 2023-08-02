// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

contract intTest {
  
    function MultipleOf(uint n, uint m) public pure returns (bool) {
        return (n % m == 0);
    }

    
    function MaxInt(uint a, uint b) public pure returns (uint) {
        return a >= b ? a : b;
    }
}