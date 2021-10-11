import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/congratcoact.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class TandaCoachIntro extends StatefulWidget{
  @override
  TandaCoachIntroState createState() => TandaCoachIntroState();
}

class TandaCoachIntroState extends State <TandaCoachIntro>{
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
                      children: [
                        Text("TANDA HERO INDUCTION", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text("This is your foundation for a solid future", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
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
                                Text("MISSION SET-UP" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                                Text("Set up smart saving rule in a\nin a clear and easy way" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoachCongratulations()));
                  },
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
                            Text("YOUR FIRST TRANSFER " , style: setStyleContent(context, ColorConstant.slightWhiteColor, 15, FontWeight.bold),),
                            Text("Set up a Transfer from your\nBank to your Tanda wallet" , style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.normal),),
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