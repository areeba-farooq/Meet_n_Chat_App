import 'package:flutter/material.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';
import 'package:meet_n_chat_app/RefactorWidgets/msg_composer.dart';
import 'package:meet_n_chat_app/models/message_models.dart';
import 'package:meet_n_chat_app/models/user_models.dart';

class ChatScreen extends StatefulWidget {

  final UserModel user;
  ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(MsgModel message, bool isMe){
    final msg = Container(
      margin: isMe? EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 80.0)
          : EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,),
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isMe? Theme.of(context).accentColor.withOpacity(0.5):
        Theme.of(context).primaryColor.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time, style: kTimeStyle),
          SizedBox(height: 5.0,),
          Text(message.text, style: kText1),
        ],),
    );
    if(isMe){
      return msg;
    }

    return Row(
      children: [
        msg,
        IconButton(
          onPressed: (){},
          icon: message.isLiked? Icon(Icons.favorite):Icon(Icons.favorite_border),
          iconSize: 25.0,
          color: message.isLiked? Colors.red: Colors.blueGrey ,
        )
      ],);
  }

  final border = BorderRadius.only(
      topRight:  Radius.circular(30.0),
      topLeft: Radius.circular(30.0)
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name, style: kChatUserStyle),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
        actions: [
          Icon(Icons.more_horiz,color: Colors.black,)
        ],
        elevation: 0.0,
      ),
      body: GestureDetector(
        //minimize the keyboard
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: border
                ),
                child: ClipRRect(
                    borderRadius: border,
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (context, index){
                      final MsgModel message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            MsgComposer(),
          ],),
      ),
    );
  }
}


