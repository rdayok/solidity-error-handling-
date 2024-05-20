// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Error {

    uint public balance;
    uint public totalWithdrawn;


    function testRequire(uint _i) public  {
        require(_i >= 10, "Input must be greater than 10");
        balance +=_i;
    }

    function testRevert(uint _withdrawAmount) public  {
        if (balance < _withdrawAmount) {
            revert("Insufficient balance to withdraw");
        }
        balance -= _withdrawAmount;
        totalWithdrawn += _withdrawAmount;
    }

    function testAssert(uint _totalWithdrawn) public view {
        assert(totalWithdrawn == _totalWithdrawn );
    }

}
