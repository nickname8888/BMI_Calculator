import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  late final Color colour;
  late final Widget cardChild;

  ReusableCard({required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
