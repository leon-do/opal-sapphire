// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Opal {
    address private owner;

    mapping(bytes32 => uint256) private balances;

    function hashPreimage(uint256 _preimage) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_preimage));
    }

    function deposit(bytes32 _hash) public payable {
        require(msg.value > 0, "Must deposit value greater than zero");
        balances[_hash] = msg.value;
    }

    function withdraw(uint256 _preimage, address _to) public payable {
        // get balance from preimage
        uint256 balance = balances[keccak256(abi.encodePacked(_preimage))];
        require(balance > 0, "Balance is zero");
        // zero balance
        balances[keccak256(abi.encodePacked(_preimage))] = 0;
        // Send value to account
        payable(_to).transfer(balance);
        // Send fee to owner
        payable(owner).transfer(fee);
    }
}
