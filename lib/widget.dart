import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final Image? image;
  final Color? color;
  final Function? onPressed;

  final Widget? widget;
  const NewWidget(
      {this.image,
      this.widget,
      this.color = const Color.fromARGB(255, 15, 20, 46),
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed as void Function()?,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: widget,
      ),
    );
  }
}
