import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

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
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
