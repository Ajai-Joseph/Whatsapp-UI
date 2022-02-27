import 'package:flutter/material.dart';
class FloatingButton extends StatelessWidget {


  final IconData buttonIcon;
  final void Function() buttonFunction;
  FloatingButton({

   required this.buttonIcon,
   required this.buttonFunction,
});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green[900],
      child: Icon(
        buttonIcon,color: Colors.white,
      ),
      onPressed: buttonFunction,
    );
  }
}
