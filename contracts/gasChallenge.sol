// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    uint[10] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // Fixed-size array

    // Caching of State Variables
    uint256 private sumCache;

    //Function to check for sum of array
    //No changes required in this function
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

    function notOptimizedFunction() public {
        for (uint256 i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }

    function optimizedFunction() public {
        unchecked {
            for (uint i = 0; i < numbers.length; i += 1) {
                numbers[i] = 0;
            }
    }
}
}