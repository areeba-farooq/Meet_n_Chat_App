import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';
import 'package:meet_n_chat_app/RefactorWidgets/drawer_items.dart';

Drawer buildDrawer(BuildContext context) {

  final Divider _line = Divider(
    color: kActiveColor,
    height: 20.0,
  );

  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Saleena Ahmed', style: kUserStyle),
          accountEmail: Text('saleenaahmed45@gmail.com', style: kEmailStyle),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/me.jpg'),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.9),
                    Theme.of(context).accentColor.withOpacity(0.9),],
                  stops: [0.0, 1.0]),
          )
          ),
        drawerItems(title: 'My account', icon: FontAwesomeIcons.user,),
        drawerItems(title: 'Messages', icon: FontAwesomeIcons.envelope),
        drawerItems(title: 'Friends', icon: FontAwesomeIcons.userFriends),
        drawerItems(title: 'Favourites', icon: FontAwesomeIcons.heart),
        drawerItems(title: 'Friend request', icon: FontAwesomeIcons.userPlus),
        _line,
        drawerItems(title: 'Settings', icon: Icons.settings),
        drawerItems(title: 'About', icon: FontAwesomeIcons.questionCircle),
        drawerItems(title: 'Logout', icon: FontAwesomeIcons.signOutAlt)
      ],
    ),
  );
}