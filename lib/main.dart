import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF030511),
        scaffoldBackgroundColor: Color(0xFF030511),
      ),
    );
  }
}
