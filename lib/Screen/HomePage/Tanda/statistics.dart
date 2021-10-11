import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/linksuccess.dart';

class Statistics extends StatefulWidget{
  @override
  StatisticsState createState() => StatisticsState();
}

class StatisticsState extends State <Statistics>{
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
                SizedBox(height: 15,),
                Text("STATISTICS", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 50.0,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("July 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                      Icon(Icons.arrow_drop_up_sharp)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorConstant.slightGreyColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        child: Container(
                            height: 70.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorConstant.greenColor,
                                        width: 7.0
                                    )
                                )
                            ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Income", style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                              Text("N 0.00",style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                            ],
                          ),
                        )
                    ),
                    ClipPath(
                        clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )
                        ),
                        child: Container(
                            height: 70.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorConstant.redColor,
                                        width: 7.0
                                    )
                                )
                            ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Expenses", style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                              Text("N 0.00",style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                            ],
                          ),
                        )
                    )
                  ],
                )
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