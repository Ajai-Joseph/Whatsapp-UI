import 'package:flutter/material.dart';
import 'package:whatsapp/avatar.dart';
import 'package:whatsapp/model/statusModel.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          StatusModel(
            avatar: ajai,
            name: "My Status",
            sub: "Tap to add status update",
          ),
          Text(
            "Recent Updates",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
