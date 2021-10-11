import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/congratcoact.dart';
import 'package:tanda/Screen/Coach/dreambig.dart';
import 'package:tanda/Screen/Coach/playing_ball.dart';
import 'package:tanda/Screen/Coach/take_a_break.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class SweatItOut extends StatefulWidget{
  @override
  SweatItOutState createState() => SweatItOutState();
}

class SweatItOutState extends State <SweatItOut>{
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
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DREAM BIG & TAKE STEPS", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text("Your money goals become reality\nfrom now with Tanda", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Container(
                    width: 330,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/lypse.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SWEAT IT OUT" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                            Text("See your savings grow by \nsaving ₦1000 per week \nfor 12weeks" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
                          ],
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo,],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BigDream()));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 350,
                    height: 120,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/lypse.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("TAKE A BREAK" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                            Text("Its time to raise the bar in \nyour money management. Keep \nsaving but do not withdraw from \nyour reverse fund for a \nminimum period of 8weeks" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 11, FontWeight.normal),),
                          ],
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo,],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TakeABreak()));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 350,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/lypse.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SAVE BY PLAYING" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 13, FontWeight.bold),),
                            Text("Achieve your money goals \nfaster by participating in \nthe daily trivia game" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
                          ],
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo,],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => PlayBall()));
                  },
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
              ],
            )
        ),
      ),
    );
  }
}