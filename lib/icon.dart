import 'package:bmi_app/constVariable.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String textData;
  const IconWidget({
    super.key,
    required this.icon,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Text(
            textData,
            style: kstringStyle,
          ),
        )
      ],
    );
  }
}
