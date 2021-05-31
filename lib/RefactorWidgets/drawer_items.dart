import 'package:flutter/material.dart';

import 'constants.dart';

// ignore: camel_case_types
class drawerItems extends StatelessWidget {
  final String title;
  final IconData icon;

  drawerItems({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(
        fontFamily: 'Yanonekafeesatz',
        fontSize: 18.0,
      ),),
      leading: Icon(icon, size: 20.0,color: kActiveColor),
      onTap: () {
        print('pages clicked');
      },
    );
  }
}