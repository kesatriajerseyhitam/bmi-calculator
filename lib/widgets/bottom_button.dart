import 'package:bmi_calculator/constants/styles.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({
    this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: kBottomContainerTextSize,
            ),
          ),
        ),
      ),
    );
  }
}
