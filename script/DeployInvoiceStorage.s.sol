// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


import {InvoiceStorage} from "src/InvoiceStorage.sol";

import {Script} from "forge-std/Script.sol";


contract DeployInvoiceStorage is Script {

    function run() external returns (InvoiceStorage) {

        vm.startBroadcast();

        InvoiceStorage invoiceStorage = new InvoiceStorage();

        vm.stopBroadcast();

        return invoiceStorage;
    }

}