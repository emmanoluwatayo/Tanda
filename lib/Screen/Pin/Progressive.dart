import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/account.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';

class  AccountCreated extends StatefulWidget{
  @override
  AccountCreatedState createState() =>  AccountCreatedState();
}

class  AccountCreatedState extends State <AccountCreated> with SingleTickerProviderStateMixin {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => AccountSettings()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 180,),
              Image.asset("assets/images/tanda.png"),
              SizedBox(height: 45,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child:    LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                  backgroundColor: ColorConstant.lightGreyColor,
                ),
              ),
              SizedBox(height: 20,),
              Text("LOADING....", style: setStyleContent(context,Colors.black,20,FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 5,),
              Text("All set now! Preparing your account \n in a bit" , style: setStyleContent(context,Colors.black,13,FontWeight.normal),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}