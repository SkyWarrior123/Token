// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.8;

import "hardhat/console.sol";

contract Token {
    string public name = "My Test Token";
    string public symbol = "MTT";
    uint public totalSupply = 10000000;

    address public owner;
    mapping(address => uint) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint amount) external {
        console.log("**Senders balance is %s tokens**", balances[msg.sender]);
        console.log("**Sender is sending %s tokens to %s address**", amount, to);
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns(uint256) {
        return balances[account];
    }

}