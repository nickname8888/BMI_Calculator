import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const primaryColour = Color(0xFF1D1E33);
const secondaryColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BMI Calculator',
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: primaryColour,
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    colour: primaryColour,
                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: primaryColour,
                cardChild: Container(),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: primaryColour,
                  cardChild: Container(),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: primaryColour,
                  cardChild: Container(),
                )),
              ],
            )),
            Container(
              color: secondaryColour,
              width: double.maxFinite,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ));
  }
}
