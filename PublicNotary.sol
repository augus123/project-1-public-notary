// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PublicNotary {
    struct Entry {
        string message;
        address user;
        uint timestamp;
    }
    
    Entry [] public allEntries;
    function writeMessage(string calldata _message) public {
        Entry memory newEntry = Entry({
            message: _message,
            user: msg.sender,
            timestamp: block.timestamp
        });

        allEntries.push(newEntry);
    }
}