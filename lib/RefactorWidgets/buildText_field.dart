import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildTextField extends StatelessWidget {
  BuildTextField({
    required this.outLineBorder,
    required this.text,
    required this.icon,
    required this.isEmail,
    required this.isPassword
  });

  final OutlineInputBorder outLineBorder;
  final String text;
  final IconData icon;
  bool isPassword;
  bool isEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.8),
                  Theme.of(context).accentColor.withOpacity(0.8),],
                stops: [0.0, 1.0])
        ),
        child: TextFormField(
          obscureText:  isPassword,
          keyboardType: isEmail? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
              prefixIcon: Icon(icon,
                color: Colors.white,),
              enabledBorder: outLineBorder,
              focusedBorder: outLineBorder,
              contentPadding: EdgeInsets.all(18.0),
              hintText: text,
              hintStyle: TextStyle(
                  fontFamily: 'Yanonekaffeesatz',
                  letterSpacing: 3.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              )
          ),
        ),
      ),
    );
  }
}