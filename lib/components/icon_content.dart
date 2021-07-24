import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.inputIcon, this.inputString);
  final IconData inputIcon;
  final String inputString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          inputIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          inputString,
          style: TextStyle(fontSize: 18.0, color: Colors.white60),
        )
      ],
    );
  }
}
