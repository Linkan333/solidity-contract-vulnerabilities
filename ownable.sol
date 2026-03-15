// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

contract IsOwnable {
  address owner;
  constructor() {
    _; // this is the bug, when you call this over the requirement we have the function body will run directly.
    // this will cause that if there are admin calls for example we can execute them as owner. or set our own owner if that function is available.
    require(msg.sender == owner, "You are not the owner of this contract");
    // this is not required to be an bug however when used wrong it can lead to severe consequences
  }

  function maybeAdminCalls() {
    /* no code here */
  }
}


