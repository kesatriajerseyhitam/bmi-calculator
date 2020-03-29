import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  RoundIconButton({
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 7,
      fillColor: Color(0xFF4c4f5e),
      onPressed: () { onTap(); },
      shape: CircleBorder(),
    );
  }
}
