# `SimpleStorage` Smart Contract

A foundational, simple smart contract built with Solidity for the Ethereum blockchain. This contract is primarily intended for educational purposes, demonstrating the most basic functionality of a smart contract: storing and retrieving data on the blockchain.

## Description

The `SimpleStorage` contract allows any user to:

1.  **Store** a single number (an unsigned integer).
2.  **Retrieve** that stored number.

It serves as an excellent "Hello, World\!" example for those new to Solidity development, illustrating state variables, functions, and the difference between "write" transactions (which cost gas) and "read" calls (which are free).

## Features

  * **Store Value:** A `public` function `setNumber` allows anyone to update the value of the stored number.
  * **Retrieve Value:** A `public view` function `getNumber` allows anyone to read the currently stored number without creating a transaction.

-----

## Contract Code

Here is the complete Solidity code for the contract.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SimpleStorage
 * @dev A basic contract that stores and retrieves a single unsigned integer.
 */
contract SimpleStorage {

    // State variable to store a number.
    // 'private' means it can only be accessed by functions within this contract.
    uint256 private myNumber;

    /**
     * @dev Stores a new number, overwriting the previous one.
     * This is a 'write' operation and requires a transaction (and gas fees).
     * @param _newNumber The new number to store.
     */
    function setNumber(uint256 _newNumber) public {
        myNumber = _newNumber;
    }

    /**
     * @dev Retrieves the stored number.
     * This is a 'read' operation and is free to call.
     * The 'view' keyword signifies that it does not modify the contract's state.
     * @return The currently stored number.
     */
    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}
```

-----

## How It Works

### State Variable

  * **`uint256 private myNumber;`**
      * This line declares a **state variable** named `myNumber`.
      * State variables are values that are permanently stored on the blockchain within the contract.
      * `uint256` is the data type, representing an unsigned integer (a positive whole number) up to 256 bits in size.
      * `private` means this variable cannot be read directly from outside the contract. It can only be accessed or modified by functions inside this contract (like `setNumber` and `getNumber`).

### Functions

1.  **`setNumber(uint256 _newNumber)`**

      * This is a **write function** because it *modifies* the state variable `myNumber`.
      * `public`: This keyword makes the function callable by anyone (any external user or another contract).
      * `uint256 _newNumber`: This is the function's **parameter**. When you call this function, you must provide a number as input.
      * `myNumber = _newNumber;`: This line assigns the input value (`_newNumber`) to the state variable (`myNumber`), overwriting any previous value.
      * **Note:** Because this function changes the blockchain's state, calling it requires a **transaction**, which costs gas.

2.  **`getNumber()`**

      * This is a **read function** because it only *reads* the state variable `myNumber`.
      * `public`: Allows anyone to call it.
      * `view`: This special keyword signifies that the function only reads data and does not modify the contract's state.
      * `returns (uint256)`: This specifies that the function will return one value of type `uint256`.
      * `return myNumber;`: This line sends back the current value stored in `myNumber`.
      * **Note:** Because this is a `view` function, it does not cost any gas to call.

-----

## Getting Started

You can easily test and deploy this contract using an online IDE like **[Remix IDE](https://remix.ethereum.org/)**.

### Deployment & Interaction

1.  **Compile:**

      * Open Remix IDE.
      * Create a new file named `SimpleStorage.sol` and paste the code above.
      * Go to the "Solidity Compiler" tab (second icon on the left).
      * Select a compiler version compatible with `^0.8.20` (e.g., `0.8.24`).
      * Click **"Compile SimpleStorage.sol"**.

2.  **Deploy:**

      * Go to the "Deploy & Run Transactions" tab (third icon on the left).
      * Under "Environment," select **"Remix VM (London)"** (this is a test blockchain that runs in your browser).
      * Ensure `SimpleStorage` is selected in the "Contract" dropdown.
      * Click the orange **"Deploy"** button.
      * The contract will appear under "Deployed Contracts" at the bottom.

3.  **Interact:**

      * Click the arrow next to your deployed `SimpleStorage` contract to expand its functions.
      * **Read the value:** Click the blue **`getNumber`** button. It will instantly show the value, which is `0` by default.
      * **Write a new value:**
          * Type a number (e.g., `42`) into the field next to the `setNumber` button.
          * Click the orange **`setNumber`** button. This will simulate a transaction.
      * **Read the new value:** Click the `getNumber` button again. It will now return `42`.

## License

This smart contract is licensed under the MIT License.

```
SPDX-License-Identifier: MIT
```
