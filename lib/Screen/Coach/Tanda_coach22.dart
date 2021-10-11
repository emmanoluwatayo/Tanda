import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Coach/dreambig.dart';
import 'package:tanda/Screen/Coach/intro_seeall.dart';
import 'package:tanda/Screen/Coach/mission_tanda_coach.dart';

class NewTandaCoach extends StatefulWidget{
  @override
  NewTandaCoachState createState() => NewTandaCoachState();
}
class NewTandaCoachState extends State <NewTandaCoach>{
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
              color: ColorConstant.primaryColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TANDA COACH", style: setStyleContent(context, ColorConstant.slightWhiteColor, 20, FontWeight.bold),),
                      SizedBox(height: 2,),
                      Text("Just like fitness app helps people improve their\nfitness in a step by step process, we created\nTanda Coach to give you a simple and effective\ntool to improve the way you manage your money yourself without haste and without imposition", style: setStyleContent(context, ColorConstant.slightWhiteColor, 13, FontWeight.normal),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorConstant.slightWhiteColor
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child:  Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(10),
                                width: ScreenUtil().setWidth(150.0),
                                height: ScreenUtil().setHeight(90.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConstant.lightGreyColor
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Interest", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                        Text("Rate", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                        Text("2%", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                                      ],
                                    ),
                                    Image.asset("assets/icons/div.png",),
                                  ],
                                )
                            ),
                            onTap: (){
                            },
                          ),
                          GestureDetector(
                            child:  Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(10),
                                width: ScreenUtil().setWidth(150.0),
                                height: ScreenUtil().setHeight(90.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorConstant.lightGreyColor
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text("Investment", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                        Text("Maturity", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                        Text("8%", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                                      ],
                                    ),
                                    Image.asset("assets/icons/clok.png",),
                                  ],
                                )
                            ),
                            onTap: (){
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("RECOMMENDED FOR YOU", style: setStyleContent(context, ColorConstant.black, 13, FontWeight.normal),),
                          GestureDetector(
                            child: Text("SEE ALL", style: setStyleContent(context, ColorConstant.primaryColor, 13, FontWeight.normal),),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SeeTandaIntro()));
                            },
                          )
                        ],
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
                                  Text("SOCIAL MEDIA AND ACTIONS" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 13, FontWeight.bold),),
                                  Text("Like, share and follow from \nour social media platform in \nother to earn free tanda points" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
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

                        },
                      ),
                      Center(
                        child:SmoothPageIndicator(
                          controller: controller,
                          count: 4,
                          effect: WormEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            type: WormType.thin,
                            // strokeWidth: 5,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("MISSION", style: setStyleContent(context, ColorConstant.black, 13, FontWeight.normal),),
                          GestureDetector(
                            child: Text("SEE ALL", style: setStyleContent(context, ColorConstant.primaryColor, 13, FontWeight.normal),),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => MissionTandaCoach()));
                            },
                          )

                        ],
                      ),
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
                                  Text("SWEAT IT OUT" , style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                  Text("Save ₦1000 per week, for 12weeks" , style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.lightGreyColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => BigDream()));
                        },
                      ),
                      Center(
                        child:SmoothPageIndicator(
                          controller: controller,
                          count: 4,
                          effect: WormEffect(
                            dotHeight: 16,
                            dotWidth: 16,
                            type: WormType.thin,
                            // strokeWidth: 5,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}