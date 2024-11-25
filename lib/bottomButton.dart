import 'package:flutter/material.dart';
import 'constVariable.dart';

class ButtomButton extends StatelessWidget {
  final String Data;
  final Function onPressed;
  const ButtomButton({
    required this.Data,
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: kbottomContainerColor,
      padding: const EdgeInsets.only(bottom: 20, top: 10),
      child: GestureDetector(
        onTap: onPressed as void Function()?,
        child: Center(
          child: Text(Data, style: KbottomStyle),
        ),
      ),
    );
  }
}
