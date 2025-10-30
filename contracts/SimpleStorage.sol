// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SimpleStorage
 * @dev A basic contract that stores and retrieves a single unsigned integer.
 */
contract SimpleStorage {

    // State variable to store a number
    uint256 private myNumber;

    /**
     * @dev Stores a new number, overwriting the previous one.
     * @param _newNumber The new number to store.
     */
    function setNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
    }

    /**
     * @dev Retrieves the stored number.
     * @return The currently stored number.
     */
    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}
