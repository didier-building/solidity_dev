//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating a version of solidity

contract SimpleStorage {
    // Basic types: boolean, uint, iny, address, bytes
    //bool hasFevouriteNumber = true;
    //string favoriteNumberInText = "Hello Didier On X";
    //int256 favoriteInt = 123;
    //address myAdrss = 0x6ad85F24c4aC2989556cA62440b616CB4cdA42a2;
    //bytes32 favoritesByte32 = "cat";
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

    }
}
