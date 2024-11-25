import 'package:flutter/material.dart';
import 'constVariable.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed as void Function(),
      shape: const CircleBorder(),
      elevation: 6.0,
      fillColor: kactiveColor,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
