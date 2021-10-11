import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/tanda_intro.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class TandaCoach extends StatefulWidget{
  @override
  TandaCoachState createState() => TandaCoachState();
}

class TandaCoachState extends State <TandaCoach>{
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
                Text("TANDA COACH", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                SizedBox(height: 2,),
                Text("Just like fitness app helps people improve their\nfitness in a step by step process, we created\nTanda Coach to give you a simple and effective\ntool to improve the way you manage your money yourself without haste and\nwithout imposition", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Container(
                    width: 330,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TANDA HERO INDUCTION" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                          Icon(Icons.arrow_forward, color: ColorConstant.slightWhiteColor,)
                        ],
                      ),
                        Text("This is your foundation for a solid future" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
                        Row(
                          children: [
                            Icon(Icons.ac_unit_outlined, color: ColorConstant.slightWhiteColor,),
                            Text("+100 Tanda Points" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),

                          ],
                        )
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoachIntro()));
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 330,
                    height: 120,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DREAM BIG & TAKE STEPS" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                            Icon(Icons.arrow_forward, color: ColorConstant.slightWhiteColor,)
                          ],
                        ),
                        Text("Move beyond just dreaming, take those giant steps today. Those big dreams \nare waiting for you" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
                        Row(
                          children: [
                            Icon(Icons.ac_unit_outlined, color: ColorConstant.slightWhiteColor,),
                            Text("+200 Tanda Points" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),

                          ],
                        )
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
                )

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