// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ErrorHandling {

    uint public balance;
    uint public totalWithdrawn;


    function addBalance(uint _amount) public  {
        require(_amount > 0, "Input must be greater than 10");
        balance +=_amount;
    }

    function withdraw(uint _withdrawAmount) public  {
        if (balance < _withdrawAmount) {
            revert("Insufficient balance to withdraw");
        }
        balance -= _withdrawAmount;
        totalWithdrawn += _withdrawAmount;
    }

    function checkTotalWithdrawn() public view returns (uint) {
        assert(totalWithdrawn != 0);
        return totalWithdrawn;
    }

}
