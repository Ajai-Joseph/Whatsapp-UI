import 'package:flutter/material.dart';
import 'package:whatsapp/avatar.dart';
import 'package:whatsapp/model/chatModel.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ChatModel(
        avatar: nolan,
        name: "Christopher Nolan",
        message: "hello",
        time: "5:33",
      ),
      Divider(
        thickness: 1,
      ),
      ChatModel(
        avatar: robert,
        name: "Robert Downey Jr.",
        message: "hi",
        time: "4:23",
      ),
      Divider(
        thickness: 1,
      ),
      ChatModel(
        avatar: ajai,
        name: "Ajai Joseph",
        message: "hello",
        time: "4:27",
      ),
      Divider(
        thickness: 1,
      ),
      ChatModel(
        avatar: lee,
        name: "Bruce Lee",
        message: "hello",
        time: "7:10",
      ),
      Divider(
        thickness: 1,
      ),
      ChatModel(
        avatar: scott,
        name: "Scott Adkins",
        message: "hello",
        time: "1:47",
      ),
      Divider(
        thickness: 1,
      ),
      ChatModel(
        avatar: arnold,
        name: "Arnold",
        message: "hello",
        time: "6:00",
      ),
      Divider(
        thickness: 1,
      ),
    ]);
  }
}
