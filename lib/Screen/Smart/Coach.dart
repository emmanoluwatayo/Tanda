import 'package:flutter/material.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';

class Coach extends StatefulWidget{
  @override
  CoachState createState() => CoachState();
}

class CoachState extends State <Coach>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("INVEST", style: setStyleContent(context,ColorConstant.slightGreyColor, 15, FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}