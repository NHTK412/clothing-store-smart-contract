// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract InvoiceStorage {

    struct Invoice {
        uint256 orderId;
        bytes32 orderHash;
        uint256 timestamp;
    }

    mapping(uint256 => Invoice) public invoices; 

    function storeInvoice(
        uint256 _orderId,
        bytes32 _orderHash
    ) public {

        require(invoices[_orderId].orderId == 0, "Already exists");

        invoices[_orderId] = Invoice({
            orderId: _orderId,
            orderHash: _orderHash,
            timestamp: block.timestamp
        });
    }

}