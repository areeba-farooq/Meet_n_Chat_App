import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final String family;
  final double size;
  final double top;
  final double left;

  const TextWidget({required this.text, required this.family, required this.size, required this.top, required this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: Text(text,style: TextStyle(
            letterSpacing: 3.0,
            color: Colors.white,
            fontFamily: family,
            fontSize: size
        ),));
  }
}
