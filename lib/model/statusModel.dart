import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatusModel extends StatelessWidget {
  final String avatar;
  final String name;
  final String sub;

  StatusModel({
    required this.avatar,
    required this.name,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: CircleAvatar(
      //   backgroundImage: AssetImage(avatar),
      // ),
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        sub,
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
