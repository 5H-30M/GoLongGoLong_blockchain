// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract EtherTransfer {
    function sendTokens(address payable _to, uint256 _value) external payable {
        require(_value > 0, "Amount must be greater than zero");
        require(address(this).balance >= _value, "Contract does not have enough balance");

        _to.transfer(_value);
    }
}

//transaction id: 0x8a3dcbacfae4ba913d2740780dfe3164cd4d717383ca59ce60a61b2131e04be5