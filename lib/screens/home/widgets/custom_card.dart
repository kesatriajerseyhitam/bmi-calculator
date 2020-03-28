import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  final Widget child;

  CustomCard({
    this.child,
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colour,
      ),
      margin: EdgeInsets.all(15),
      child: child,
    );
  }
}
