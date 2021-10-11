import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  RewardShare extends StatefulWidget{
  @override
  RewardShareState createState() =>  RewardShareState();
}

class  RewardShareState extends State <RewardShare> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: context.width(),
                  decoration: boxDecorationWithRoundedCorners(
                    borderRadius: radiusOnly(topLeft: 16, topRight: 16),
                    backgroundColor:ColorConstant.lightGreyColor
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              children: [
                                Image.asset("assets/images/whatsApp.png", ),
                                SizedBox(height: 10,),
                                Text("WhatsApp" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/gram.png", ),
                                SizedBox(height: 10,),
                                Text("Telegram" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/messagess.png", ),
                                SizedBox(height: 10,),
                                Text("Messages" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              children: [
                                Image.asset("assets/images/lypse.png", ),
                                SizedBox(height: 10,),
                                Text("Copy to \n Clipboard" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/nopath.png", ),
                                SizedBox(height: 10,),
                                Text("Save to \n Drive" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/fbook.png", ),
                                SizedBox(height: 10,),
                                Text("News Feed" , style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                              children: [
                                Image.asset("assets/images/twitt.png", ),
                                SizedBox(height: 10,),
                                Text("Twitter" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/mailss.png", ),
                                SizedBox(height: 10,),
                                Text("Gmail" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                          Column(
                              children: [
                                Image.asset("assets/images/pathno.png", ),
                                SizedBox(height: 10,),
                                Text("Twitch" ,  style: setStyleContent(context,Colors.black,13,FontWeight.w500), textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: Material(
        elevation: 3.0,
        color: Colors.white,
        child: Container(
            height:ScreenUtil().setHeight(50.0),
            margin: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_sharp,color: ColorConstant.freyColor,),
                ),
              ],
            )
        ),
      ),
    );
  }
}