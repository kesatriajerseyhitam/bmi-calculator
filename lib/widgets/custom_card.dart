import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  final Function onPress;
  final Widget child;

  CustomCard({
    this.child,
    this.onPress,
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colour,
        ),
        margin: EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
