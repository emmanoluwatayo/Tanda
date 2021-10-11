import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/Walkthrough/onboarding.dart';



class ScreenSplash extends StatefulWidget{
  @override
  ScreenSplashState createState() => ScreenSplashState();
}

class ScreenSplashState extends State <ScreenSplash>{


  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => OnBoardingPage()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFF564FFE),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.only(left: 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset("assets/images/tanda.png"),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}