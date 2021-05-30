import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextButton SocialButtons(IconData icon, String title, Color bgColor) {
  return TextButton(
    onPressed: (){
      print('Button triggered');

    },
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      minimumSize: Size(155, 40),
      primary: Colors.white,
      backgroundColor: bgColor,
    ),
    child: Row(
        children: [
          Icon(icon, color: Colors.white,),
          SizedBox(
            width: 2.0,
          ),
          Text(title, style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.0,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Acme'
          ),
          ),
        ]),
  );
}

