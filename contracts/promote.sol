// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract OrderContract {
    uint256 public totalOrders;

    struct Order {
        string deliveryaddress;
        // string message;
    }

    mapping(address => Order) public orders;

    event OrderRequested(address indexed customer, string deliveryaddress);

    function requestOrder(string memory deliveryaddress) public {
        require(bytes(deliveryaddress).length > 0, "URL cannot be empty");
        // require(bytes(message).length > 0, "Message cannot be empty");

        // Store the message and URL for the customer
        orders[msg.sender] = Order(deliveryaddress);
        totalOrders++;

        // Emit event to log the Order request
        emit OrderRequested(msg.sender,deliveryaddress);
    }

    function getOrderDetails(address customer) external view returns (string memory deliveryaddress) {
        // Retrieve the stored message and URL for the customer
        Order memory order = orders[customer];
        return (order.deliveryaddress);
    }

    function getAddress() external view returns(address) {
        return address(this);
    }
}
