import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';
import 'package:meet_n_chat_app/models/message_models.dart';

class RecentChats extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
        ),
        child: ClipRRect(
            borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: chats[index].unRead ? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(chats[index].sender.avatar),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(chats[index].sender.name, style: kNameStyle),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(chats[index].text, style: kMsgStyle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          chats[index].unRead? Container(
                            margin: EdgeInsets.only(left: 40.0),
                            width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.red
                              ),
                              alignment: Alignment.center,
                          ) : Text(''),
                          SizedBox(height: 5.0,),
                          Text(chats[index].time,style: kTimeStyle),
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}