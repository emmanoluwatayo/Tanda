import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/Smart/reserved_smart_set_and_forget.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/Smart/smart_settings.dart';
import 'package:tanda/Screen/linksuccess.dart';

class ReservedFundWeekly extends StatefulWidget{
  @override
  ReservedFundWeeklyState createState() => ReservedFundWeeklyState();
}

class ReservedFundWeeklyState extends State <ReservedFundWeekly>{

  int currentIndex = 0;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child:  Image.asset("assets/images/dollarcon.png"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12), color: ColorConstant.lightGreyColor
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("RESERVED FUND", style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                        Text("#2,050", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                        Text("saved", style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Container(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Weekly Top Up", style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                            Text("Set aside #500 every week", style: setStyleContent(context,Colors.black,12,FontWeight.normal)),
                          ],
                        ),
                        ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), color: ColorConstant.slightGreyColor
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ReservedSetAndForget()));
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                            onPressed: (){},
                            child:  Icon(Icons.add, color: ColorConstant.primaryColor,),
                            backgroundColor:ColorConstant.slightGreyColor),
                        SizedBox(height: 5,),
                        Text("Set a Smart Rule", style: setStyleContent(context,Colors.black,12,FontWeight.normal),)

                      ],
                    ),
                  ),
                ),
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
              ],
            )
        ),
      ),
    );
  }
}