import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/models/message_models.dart';
import 'constants.dart';

class FavContacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Favourite Contacts', style: kFavContactsStyle),
                IconButton(
                  icon: Icon(Icons.more_horiz,
                    color: Colors.blueGrey,),
                  iconSize: 30.0,
                  onPressed: (){print('Pressed dots');},)
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal ,
              itemCount: favs.length,
                itemBuilder: (context, i){
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favs[i].avatar),
                      ),
                      SizedBox(height: 6.0,),
                      Text(favs[i].name, style: kFavContactsStyle,),
                    ],
                  ),
                );
                }),

          )
        ],
      ),
    );
  }
}
