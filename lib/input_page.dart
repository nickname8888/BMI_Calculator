import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const primaryColour = Color(0xFF1D1E33);
const secondaryColour = Color(0xFFEB1555);
const inactiveColour = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = inactiveColour;
  // Color femaleCardColour = inactiveColour;
  Gender? selectedGender;
  int height = 150;
  int weight = 60;
  int age = 18;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? primaryColour
                          : inactiveColour,
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? primaryColour
                        : inactiveColour,
                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                  onPress: () {},
                  colour: primaryColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(fontSize: 18, color: Colors.white60),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'cm',
                          )
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 250.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      )
                    ],
                  )),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        colour: primaryColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white60),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text('kg'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  buttonFunction: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  buttonFunction: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ))),
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  colour: primaryColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(fontSize: 18, color: Colors.white60),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Text('yrs'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            buttonFunction: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            buttonFunction: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
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

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key? key}) : super(key: key);

  final IconData icon;
  Function buttonFunction;

  RoundIconButton({required this.icon, required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        buttonFunction();
      },
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
