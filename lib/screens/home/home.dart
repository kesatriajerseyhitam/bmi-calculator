import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/card_icon.dart';
import 'widgets/custom_card.dart';

const activeCardColour = Color(0xFF111223);
const bottomContainerColour = Color(0xFF770f37);
const bottomContainerHeight = 70.0;
const bottomContainerTextSize = 25.0;
const inactiveCardColour = Color(0xFF1D1E33);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color femaleCardColour = inactiveCardColour;
  Color maleCardColour = inactiveCardColour;
  String activeGender;

  void genderTap({String gender}) {
    resetGenderColour();

    setState(() {
      if (gender == 'male') {
        maleCardColour = activeCardColour;
        activeGender = 'male';
      } else {
        femaleCardColour = activeCardColour;
        activeGender = 'female';
      }
    });
  }

  void resetGenderColour() {
    setState(() {
      femaleCardColour = inactiveCardColour;
      maleCardColour = inactiveCardColour;
      activeGender = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: CustomCard(
                      colour: maleCardColour,
                      child: CardIcon(
                        customIcon: FontAwesomeIcons.male,
                        text: 'MALE',
                      ),
                    ),
                    onTap: () {
                      genderTap(gender: 'male');
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: CustomCard(
                      colour: femaleCardColour,
                      child: CardIcon(
                        customIcon: FontAwesomeIcons.female,
                        text: 'FEMALE',
                      ),
                    ),
                    onTap: () {
                      genderTap(gender: 'female');
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: inactiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    colour: inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: inactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Center(
              child: Text(
                'calculate'.toUpperCase(),
                style: TextStyle(
                  fontSize: bottomContainerTextSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
