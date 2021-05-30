import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/Pages/welcome_page.dart';


void main() => runApp(MeetnChat());


class MeetnChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFF70DC),
        accentColor: Color(0xFFFF9BAB),
      ),
      home: WelcomePage(),
    );
  }
}
