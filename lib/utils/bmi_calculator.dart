import 'dart:math';

import 'package:bmi_calculator/constants/styles.dart';
import 'package:flutter/material.dart';

class BMICalculator {
  final int height;
  final int weight;

  double _bmi;

  BMICalculator({
    this.height,
    this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  TextSpan getAdvice(status) {
    if (status == "overweight") {
      return TextSpan(
        text:
            "You have a higher than normal body weight. Try to exercise more.",
        style: kTextSpanStyle,
      );
    } else if (status == "normal") {
      return TextSpan(
        text: "You have a normal body. ",
        style: kTextSpanStyle,
      );
    } else {
      return TextSpan(
        text:
            "You have a lower than normal body weight. You can eat a bit more.",
        style: kTextSpanStyle,
      );
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }
}
