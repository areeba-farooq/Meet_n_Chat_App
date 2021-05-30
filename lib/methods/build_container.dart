import 'package:flutter/material.dart';
import '../RefactorWidgets/constants.dart';

Container buildContainer() {
  return Container(
    width: 240.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "By pressing the 'Submit' you agree to our",
          style: kText1,
          children: [
            TextSpan(
              text: '  Terms & Conditions',
              style: kText2
            )
          ]
      ),
    ),
  );
}
