import 'package:flutter/material.dart';

import 'constants.dart';

class Buttons extends StatelessWidget {
  final String text;
  final double top;
  final double horizontal;
  final  onTap;

  const Buttons({required this.onTap, required this.text, required this.top, required this.horizontal,});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 130,
        child: ElevatedButton(
            onPressed: onTap,
            child: Text(text, style: kButtonStyle),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide.none),
            ))
    );
  }
}