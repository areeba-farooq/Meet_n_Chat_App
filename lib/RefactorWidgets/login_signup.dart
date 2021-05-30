import 'package:flutter/material.dart';

class LoginSingup extends StatelessWidget {
  const LoginSingup({
    required this.isSignupScreen,
    required this.containerLine,
    required this.color, required this.text
  });

  final bool isSignupScreen;
  final Container containerLine;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style: TextStyle(
            color: color,
            fontSize: 18.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Acme'
        ),),
        if(isSignupScreen)
          containerLine
      ],
    );
  }
}