import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

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
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
