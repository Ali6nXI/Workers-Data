// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {WorkerData} from "../src/WorkerData.sol";

contract WorkerDataScript is Script {
    WorkerData public workerData;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        workerData = new WorkerData("Ogangbo", 6, "Manager");

        vm.stopBroadcast();
        console.log("WorkerData deployed to:", address(workerData));
    }
}
