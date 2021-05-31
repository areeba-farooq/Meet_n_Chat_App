import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meet_n_chat_app/Pages/home_page.dart';
import 'package:meet_n_chat_app/RefactorWidgets/Radio_Buttons.dart';
import 'package:meet_n_chat_app/methods/build_container.dart';
import 'package:meet_n_chat_app/RefactorWidgets/constants.dart';
import 'package:meet_n_chat_app/RefactorWidgets//login_signup.dart';
import 'package:meet_n_chat_app/methods/social_Buttons.dart';
import '../RefactorWidgets//buildText_field.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;
  final containerLine = Container(
    margin: EdgeInsets.only(top: 3.0),
    height: 2.0,
    width: 55,
    color: kActiveColor,
  );

  final outLineBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(30.0))
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // TopBarDecoration(),
        Positioned(
        top: 0.0,
        right: 0.0,
        left: 0.0,
        child: Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'images/bg.jpg',
              ),
            ),
          ),
          child:  Container(
            padding: EdgeInsets.only(top: 100.0, left: 20.0),
            height: 800.0,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.8),
                    Theme.of(context).accentColor.withOpacity(0.2),],
                  stops: [0.0, 1.0]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: isSignupScreen ? 'Welcome to' : 'Welcome back to',
                      style: TextStyle(
                          fontSize: 22.0,
                          letterSpacing: 3.0,
                          color: Colors.black,
                          fontFamily: 'Yanonekaffeesatz',
                          fontWeight: FontWeight.w600
                      ),
                      children: [
                        TextSpan(
                            text: '  Meet and Chat',
                            style: TextStyle(
                                fontSize: 23.0,
                                letterSpacing: 3.0,
                                color: Colors.black,
                                fontFamily: 'Acme',
                                fontWeight: FontWeight.w600
                            )
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 10.0,),
                Text( isSignupScreen ?'Signup to continue.' : 'Login to Continue',
                  style: TextStyle(
                      fontSize: 17.0,
                      letterSpacing: 3.0,
                      color: Colors.black,
                      fontFamily: 'Yanonekaffeesatz',
                      fontWeight: FontWeight.w400
                  ),)
              ],
            ),
          ),
        ),
      ),

          //Circle bottom button
          buildBottomButton(context, true),
          //Main Container for Login and Signup
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: isSignupScreen? 200.0 : 230.0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(15.0),
              height: isSignupScreen? 400.0 : 270,
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 8.0,
                        spreadRadius: 2.0
                    )
                  ]
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
                            child: LoginSingup(text: 'LOGIN',
                              containerLine: containerLine,
                              isSignupScreen: !isSignupScreen,
                              color: isSignupScreen
                                  ? kInactiveColor
                                  : kActiveColor,)
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: LoginSingup(text: 'SIGNUP',
                            isSignupScreen: isSignupScreen,
                            containerLine: containerLine,
                            color: isSignupScreen
                                ? kActiveColor
                                : kInactiveColor,),
                        )
                      ],),
                    if(isSignupScreen) buildSignupSection(),
                    if(!isSignupScreen)buildLoginSection()
                  ],
                ),
              ),
            ),
          ),
          //Trick to add a Submit button
          buildBottomButton(context, false),
          Positioned(
            top: MediaQuery
                .of(context)
                .size
                .height - 100,
            right: 0.0,
            left: 0.0,
            child: Column(
              children: [
                Text(isSignupScreen? "Or SignUp with: " : 'Or Login with: ', style: kText1,),
                Container(
                  margin: EdgeInsets.only(right:  20.0, left: 20.0, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButtons(FontAwesomeIcons.facebook, 'acebook',
                          Color(0xFF325BA5),),
                        SocialButtons(
                          FontAwesomeIcons.google, 'oogle', Color(0xFFE34133),),
                      ]),
                )

              ],),
          ),

        ],
      ),
    );
  }

  //METHODS:
  Container buildLoginSection() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(children: [
        BuildTextField(icon: Icons.email, text:'info@example.com', isPassword: false, isEmail:true, outLineBorder: outLineBorder,),
        BuildTextField(icon: Icons.lock, text:'****************', isPassword: true, isEmail:false, outLineBorder: outLineBorder,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: isRememberMe,
                    activeColor: kActiveColor,
                    onChanged: (value){
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    }),
                Text('Remember me', style: kText1,)
              ],),
            TextButton(
                onPressed: (){},
                child: Text('Forgot Password?', style: kText1,))
          ],
        )
      ],),
    );
  }

  Container buildSignupSection() {
    return Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      BuildTextField(outLineBorder: outLineBorder,
                          text: 'User Name',
                          icon: Icons.person,
                          isPassword: false,
                          isEmail: false),
                      BuildTextField(outLineBorder: outLineBorder,
                          text: 'Email',
                          icon: Icons.email,
                          isPassword: false,
                          isEmail: true),
                      BuildTextField(outLineBorder: outLineBorder,
                          text: 'Password',
                          icon: Icons.lock,
                          isPassword: true,
                          isEmail: false),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                  });
                                },
                                child: Row(
                                    children: [
                                      RadioButton(icon: Icons.male,
                                          color: isMale
                                              ? kActiveColor
                                              : kInactiveColor,
                                          colour: isMale
                                              ? kActiveColor
                                              : kInactiveColor),
                                      RadioNames(text: 'Male',),
                                    ]
                                )
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Row(
                                children: [
                                  RadioButton(icon: Icons.female,
                                    color: isMale
                                        ? kInactiveColor
                                        : kActiveColor,
                                    colour: isMale
                                        ? kInactiveColor
                                        : kActiveColor,),
                                  RadioNames(text: 'Female',),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      buildContainer()
                    ],
                  ),
                );
  }

  Widget buildBottomButton(BuildContext context, bool showShadow) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignupScreen? 560.0 : 465.0,
      right: 0.0,
      left: 0.0,
      child: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Container(
              height: 65.0,
              width: 65.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    if(showShadow)
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 1)
                      ),]
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(0.8),
                        Theme.of(context).accentColor.withOpacity(0.8),],
                      stops: [0.0, 1.0]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white,),

              )
          ),
        ),
      ),
    );
  }

}













