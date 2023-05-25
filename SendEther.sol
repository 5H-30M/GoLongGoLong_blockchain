// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherTransfer {
    function sendEther(address payable recipient) external payable {
        require(msg.value > 0, "Amount must be greater than zero");
        require(address(this).balance >= msg.value, "Contract does not have enough balance");

        recipient.transfer(msg.value);
    }


// pragma solidity ^0.8.0;

// contract EtherTransfer {
//     function sendEther(address payable recipient, uint256 amountInWei) external payable {
//         require(amountInWei > 0, "Amount must be greater than zero");
//         require(msg.value >= amountInWei, "Insufficient balance");

//         recipient.transfer(amountInWei);
//     }
}
