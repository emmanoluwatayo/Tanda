import 'package:flutter/material.dart';
import 'package:tanda/Walkthrough/onboarding.dart';
import 'package:tanda/Walkthrough/screensplash.dart';


class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State <HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: OnBoardingPage(),
    );
  }
}