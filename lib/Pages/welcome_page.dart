import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meet_n_chat_app/Pages/loign_Singup_page.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';
import 'package:meet_n_chat_app/methods/social_Buttons.dart';
import '../RefactorWidgets//button_widget.dart';
import '../RefactorWidgets//text_widget.dart';

class WelcomePage extends StatelessWidget {

  final  _boxdecoration = BoxDecoration(
    color: Colors.transparent,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'images/wc.jpg',
      ),
    ),
  );

  final _divider =  Container(
    height: 250,
    width: 500,
    child: Divider(
      color: Colors.white,
      indent: 30.0,
      endIndent: 30.0,
      thickness: 1.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
        Container(
          decoration: _boxdecoration,
          height: 800.0,
        ),
        Container(
          height: 800.0,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.5),
                    Theme.of(context).accentColor.withOpacity(0.5),],
                  stops: [0.0, 1.0]),
          ),
        ),
            TextWidget(top: 60, left: 70, text: 'Meet & Chat', size: 50.0, family: 'Acme',),
            _divider,
            TextWidget(top: 140, left: 35, text: 'Chat with people all over the world!', size: 20.0, family: 'Yanonekaffeesatz',),
            TextWidget(top: 300, left: 145, text: 'Welcome!', size: 25.0, family: 'Acme',),
            Buttons(text: 'Login',top: 400, horizontal: 50.0, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },),
            Buttons(text: 'Signup', top: 460, horizontal: 45, onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
            Positioned(
              top: MediaQuery.of(context).size.height-100,
              right: 0.0,
              left: 0.0,
              child: Column(
                children: [
                  Text("Or Continue with: ", style: kText1,),
                  Container(
                    margin: EdgeInsets.only(right:  20.0, left: 20.0, top: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialButtons(FontAwesomeIcons.facebook, 'acebook', Color(0xFF325BA5),),
                          SocialButtons(FontAwesomeIcons.google, 'oogle',Color(0xFFE34133),),
                        ]),
                  )

                ],),
            ),

   ]),
    );
  }
}





