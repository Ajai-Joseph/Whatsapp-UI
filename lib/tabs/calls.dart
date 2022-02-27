import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp/avatar.dart';
import 'package:whatsapp/tabs/widgets/floatingButton.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(tony),
          ),
          title: Text(
            "Tony Jaa",
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle:Text("12 March, 4:30 pm"),
          trailing: Icon(
            Icons.videocam,
            color: Colors.green.shade900,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(nolan),
          ),
          title: Text(
            "Christopher Nolan",
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),  subtitle:Text("27 May, 6:10 pm"),
          trailing: Icon(
            Icons.call,
            color: Colors.green.shade900,
          ),
        ),
      ],
    );
  }
}
