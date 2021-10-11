import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/Smart/smart_settings.dart';
import 'package:tanda/Screen/linksuccess.dart';

class ReservedFund extends StatefulWidget{
  @override
  ReservedFundState createState() => ReservedFundState();
}

class ReservedFundState extends State <ReservedFund>{

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.redColor,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child:  Image.asset("assets/images/dollarcon.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), color: ColorConstant.lightGreyColor
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("RESERVED FUND", style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                        Text("#2,050", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                        Text("saved", style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                      ],
                    ),
                    Image.asset("assets/icons/noti.png", ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reserve Funds", style: setStyleContent(context,Colors.white,18,FontWeight.bold),),
                          Text("1 active rules", style: setStyleContent(context,Colors.white,12,FontWeight.normal)),
                        ],
                      ),
                      Image.asset("assets/images/settins.png")
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: ColorConstant.black
                  ),
                ),
                SizedBox(height: 20,),
                Text("TOTAL ACTIVITIES", style: setStyleContent(context,Colors.black38,20,FontWeight.normal),),
                Container(
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/pluss.png"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Reserve Fund" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("8 activities" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                    ],
                                  ),
                                  Text("#2,050" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                ],
                              ),
                              Divider(thickness: 2,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/plusout.png"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Reserve Fund" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("2 activities" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                    ],
                                  ),
                                  Text("#2,050" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color: ColorConstant.lightGreyColor
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
                GestureDetector(
                  child:  Container(
                    width: ScreenUtil().setWidth(100.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(color: ColorConstant.primaryColor)
                    ),
                    child: Center(
                      child: Text('Add Funds', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SmartSettings()));
                  },
                ),
                GestureDetector(
                  child:  Container(
                    width: ScreenUtil().setWidth(150.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Center(
                      child: Text('Withdraw Funds', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SmartSettings()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}