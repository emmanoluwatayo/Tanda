import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/tanda_intro.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class TandaCoachCongratulationsPage extends StatefulWidget{
  @override
  TandaCoachCongratulationsPageState createState() => TandaCoachCongratulationsPageState();
}

class TandaCoachCongratulationsPageState extends State <TandaCoachCongratulationsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
    Image.asset("assets/images/happy.png",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    ),
      Scaffold(
      backgroundColor:  Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
               child: Center(
                 child: Column(
                   children: [
                     SizedBox(height: 200,),
                     Image.asset("assets/images/medal.png"),
                     Text("CONGRATULATIONS", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                     Text("You have completed the mission"),
                   ],
                 ),
               )
          )
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
      )]);
  }
}