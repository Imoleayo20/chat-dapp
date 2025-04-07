// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Chat {
    struct Message {
        address sender;
        string content;
        uint256 timestamp;
    }

    // Mapping: sender => receiver => list of messages
    mapping(address => mapping(address => Message[])) private conversations;

    event MessageSent(address indexed sender, address indexed receiver, string content, uint256 timestamp);

    function sendMessage(address _receiver, string memory _content) public {
        require(_receiver != address(0), "Invalid receiver address");
        require(bytes(_content).length > 0, "Message cannot be empty");

        // Store the message in both directions
        conversations[msg.sender][_receiver].push(Message(msg.sender, _content, block.timestamp));
        conversations[_receiver][msg.sender].push(Message(msg.sender, _content, block.timestamp));

        emit MessageSent(msg.sender, _receiver, _content, block.timestamp);
    }

    // Fetch messages between the sender and receiver
    function getMessages(address _user1, address _user2) public view returns (Message[] memory) {
        return conversations[_user1][_user2];
    }

    // Debug function to get message count
    function getMessageCount(address _user1, address _user2) public view returns (uint256) {
        return conversations[_user1][_user2].length;
    }
}
