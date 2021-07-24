import 'package:flutter/material.dart';

import '../screens/input_page.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        ),
      ),
      color: secondaryColour,
      width: double.maxFinite,
      height: bottomContainerHeight,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 20.0),
    );
  }
}
