import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';


class RadioNames extends StatelessWidget {
  final String text;
  RadioNames({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: kInactiveColor,
          letterSpacing: 1.0,
          fontFamily: 'Yanonekafeesatz',
          fontSize: 15.0,
          fontWeight: FontWeight.w600
      ),
    );
  }
}

class RadioButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color colour;

  RadioButton({required this.icon, required this.color, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      margin: EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
          color: color,
          border:  Border.all(width: 1.0,
              color: colour),
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Icon(icon,
        color: Colors.white,),
    );
  }
}