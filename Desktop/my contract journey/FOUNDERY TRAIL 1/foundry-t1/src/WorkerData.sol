// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract WorkerData {
    string public name;
    uint public age;
    string public jobrank;


    constructor(string memory _name, uint _age, string memory _jobrank) {
        name = _name;
        age = _age;
        jobrank = _jobrank;
    }

    function updateAge(uint _newAge) public {
        age = _newAge;
    }
   
    function getWorker() public view returns (string memory, uint, string memory) {
        return (name, age, jobrank);
    }

    function updatejobrank( string memory _jobrank) public {
        jobrank = _jobrank;
    }
}