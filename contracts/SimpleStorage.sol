//SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //stating a version of solidity

contract SimpleStorage {
    // Basic types: boolean, uint, iny, address, bytes
    //bool hasFevouriteNumber = true;
    //string favoriteNumberInText = "Hello Didier On X";
    //int256 favoriteInt = 123;
    //address myAdrss = 0x6ad85F24c4aC2989556cA62440b616CB4cdA42a2;
    //bytes32 favoritesByte32 = "cat";
    uint256 public myFavoriteNumber;
    // uint256[] listOfFavoriteNumbers; //0

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    // dynamic Array
    Person[] public listOfpeople;

    mapping(string => uint256) public nameToFavoriteNumber;
     

    // Person public pat = Person({favoriteNumber : 7, name: "pat"});


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;

    }
    //view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }
    //calldat, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        listOfpeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;

    }
}
