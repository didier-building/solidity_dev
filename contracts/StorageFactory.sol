// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18;
 import {SimpleStorage} from "./SimpleStorage.sol";
 
 contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        //how does the starrage factory contracts knows what simple storage look like
        SimpleStorage newSimpleStorageContact = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContact);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI- Application Binary Interface

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

 }