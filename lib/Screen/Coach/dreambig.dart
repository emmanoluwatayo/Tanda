import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/congte.dart';
import 'package:tanda/Screen/Coach/tanda_gain.dart';
import 'package:tanda/Screen/Coach/tanda_intro.dart';
import 'package:tanda/Screen/Smart/edit_save_goal.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class BigDream extends StatefulWidget{
  @override
  BigDreamState createState() => BigDreamState();
}

class BigDreamState extends State <BigDream>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding:  EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TANDA HERO INDUCTION", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                SizedBox(height: 2,),
                Text("SWEAR IT OUT", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                Text("Save ₦1000 a week, for 12 weeks", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/clok.png"),
                        Text("7Days", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.ac_unit_outlined, color: ColorConstant.primaryColor, ),
                        Text("+10 Tanda points", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 330,
                  height: 150,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("DESCRIPTION" , style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                      Text("The best way to build your savings is to start\nbuilding good habits. Little by little you will\nsee your savings grow and you start\nbecoming your own motivator" , style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      SizedBox(height: 10,),
                      Text("OUTCOMES" , style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(

                    color: ColorConstant.lightGreyColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  width: 330,
                  height: 120,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Learning the basics of savings" , style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Building a savings habit" , style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                      ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
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
                GestureDetector(
                  child:  Container(
                    width: ScreenUtil().setWidth(250.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Center(
                      child: Text('Start Mission', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    startmission(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }

  startmission(BuildContext context) async {
    String teamName = '';
    return showDialog(
        context: context,
        barrierDismissible: false, // dialog is dismissible with a tap on the barrier
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/loading.png"),
                    SizedBox(height: 10,),
                    Text( "Complete Mission!" , style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                    Text("Create the unique sweat out savings \ngoal where you get to \nsave #2,000 each week consecutively \nfor 12 months" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    GestureDetector(
                      child:  Container(
                        width: ScreenUtil().setWidth(100.0),
                        height: ScreenUtil().setHeight(50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                              colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Center(
                          child: Text('Continue', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => EditSaveGoal()));
                      },
                    )
                  ],
                )
            ),);});}
}