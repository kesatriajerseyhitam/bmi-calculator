import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const bottomContainerHeight = 70.0;
const bottomContainerTextSize = 25.0;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: CustomCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: activeCardColour,
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
