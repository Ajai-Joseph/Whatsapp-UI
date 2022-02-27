import 'package:flutter/material.dart';


class ChatModel extends StatelessWidget {
  final String avatar;
  final String name;
  final String message;
  final String time;
  ChatModel({
    required this.avatar,
    required this.name,
    required this.message,
    required this.time,
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(avatar),
            ),



      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
    );

  }
}
