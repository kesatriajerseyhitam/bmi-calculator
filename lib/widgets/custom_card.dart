import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;

  CustomCard({
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF1D1E33),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
