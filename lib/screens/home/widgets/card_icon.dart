import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final IconData customIcon;
  final String text;

  CardIcon({
    @required this.customIcon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          customIcon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
