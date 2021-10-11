import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/Tanda_coach.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class HistoryAirtel extends StatefulWidget{
  @override
  HistoryAirtelState createState() => HistoryAirtelState();
}

class HistoryAirtelState extends State <HistoryAirtel>{
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
                Text("HISTORY", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
    
                SizedBox(height: 20,),
                Text("A", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.normal),),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        child:   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                textScaleFactor: 1.2,
                              ),
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MTN", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("Airtime", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                     Spacer(),
                     Column(
                       children: [
                         Text("-500", style: setStyleContent(context, ColorConstant.redColor, 15, FontWeight.bold),),
                         Text("Debit", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                       ],
                     )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoach()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        child:   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                textScaleFactor: 1.2,
                              ),
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("Balance TopUP", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("-500", style: setStyleContent(context, ColorConstant.greenColor, 15, FontWeight.bold),),
                          Text("Debit", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoach()));
                  },
                ),
                Divider(thickness: 2.0,),
                SizedBox(height: 20,),
                Text("A", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.normal),),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        child:   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                textScaleFactor: 1.2,
                              ),
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MTN", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("Airtime", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("-500", style: setStyleContent(context, ColorConstant.redColor, 15, FontWeight.bold),),
                          Text("Debit", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoach()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        child:   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                textScaleFactor: 1.2,
                              ),
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Card", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("Balance TopUP", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("-500", style: setStyleContent(context, ColorConstant.greenColor, 15, FontWeight.bold),),
                          Text("Debit", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoach()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        child:   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                textScaleFactor: 1.2,
                              ),
                            )
                        ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MTN", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("Airtime", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("-500", style: setStyleContent(context, ColorConstant.redColor, 15, FontWeight.bold),),
                          Text("Debit", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      )
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoach()));
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