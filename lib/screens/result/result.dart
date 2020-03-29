import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RESULT'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                width: double.infinity,
                child: CustomCard(
                  colour: kInactiveCardColour,
                  child: Text('Something'),
                ),
              ),
            ),
          ],
        ));
  }
}
