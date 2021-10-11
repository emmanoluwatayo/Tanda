import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/linksuccess.dart';

class Reward extends StatefulWidget{
  @override
  RewardState createState() => RewardState();
}

class RewardState extends State <Reward>{
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
            Align(
            alignment: Alignment.centerLeft,
            child:  Text("REWARD", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
          ),
          SizedBox(height: 40,),
          Image.asset("assets/images/reward.png", height: 300,),
          SizedBox(height: 20,),
          Text("REFER A FRIEND AND YOU EACH GET N250", style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
          SizedBox(height: 10,),
          Text("To enjoy our AI powered savings, investments, \n deposits, and withdrawals, securely link your \n bank to your Tanda Account. We use \n bank-level security, data \n encryption and more",
            style: setStyleContent(context,Colors.black,12,FontWeight.normal), textAlign: TextAlign.center ,),
        ]),
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
                      child: Text('Share', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TrackReferral()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}