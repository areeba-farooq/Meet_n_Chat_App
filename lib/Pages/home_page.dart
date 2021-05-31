import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/RefactorWidgets/category_Selector.dart';
import 'package:meet_n_chat_app/RefactorWidgets/fav_contacts.dart';
import 'package:meet_n_chat_app/RefactorWidgets/recent_chats.dart';
import 'package:meet_n_chat_app/methods/build_drawer.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
        actions: [
          Icon(Icons.search,color: Colors.black,)
        ],
        elevation: 0.0,
      ),
      drawer: buildDrawer(context),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFEF9EB),
                borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              child: Column(
                children: [
                 FavContacts(),
                  RecentChats()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



