import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/methods/build_drawer.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search,
          color: Colors.black,
            size: 25.0,
          )
        ],
      ),
      drawer: buildDrawer(context),
    );
  }

}


