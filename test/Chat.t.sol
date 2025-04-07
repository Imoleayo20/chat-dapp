// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/Chat.sol";

contract ChatTest is Test {
    Chat chat;
    address user1 = address(0x123);
    address user2 = address(0x456);

    function setUp() public {
        chat = new Chat(); // Make sure the contract is correctly deployed
    }

    function testSendMessage() public {
        vm.prank(user1); // Simulate user1 sending a message
        chat.sendMessage(user2, "Hello, user2!");

        // Debugging: Check the message count directly before assertions
        uint256 messageCountUser1ToUser2 = chat.getMessageCount(user1, user2);
        console.log("Message count from user1 to user2: ", messageCountUser1ToUser2);
        assertEq(messageCountUser1ToUser2, 1);

        // Fetch the messages
        Chat.Message[] memory messages = chat.getMessages(user1, user2);
        assertEq(messages.length, 1);
        assertEq(messages[0].sender, user1);
        assertEq(messages[0].content, "Hello, user2!");

        // Check if user2 received the message
        uint256 messageCountUser2ToUser1 = chat.getMessageCount(user2, user1);
        console.log("Message count from user2 to user1: ", messageCountUser2ToUser1);
        assertEq(messageCountUser2ToUser1, 1);

        Chat.Message[] memory receivedMessages = chat.getMessages(user2, user1);
        assertEq(receivedMessages.length, 1);
        assertEq(receivedMessages[0].sender, user1);
        assertEq(receivedMessages[0].content, "Hello, user2!");
    }
}
