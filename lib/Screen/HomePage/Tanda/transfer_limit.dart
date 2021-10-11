import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  TransferLimits extends StatefulWidget{
  @override
  TransferLimitsState createState() =>  TransferLimitsState();
}

class  TransferLimitsState extends State <TransferLimits> with SingleTickerProviderStateMixin {
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
          Text("TRANSFER LIMITS", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
          SizedBox(height: 25,),
          Text("MISSIONS" ,style: setStyleContent(context,Colors.black,15,FontWeight.w300),),
          SizedBox(height: 10,),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("UNLIMITED" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),  color: ColorConstant.lightGreyColor
            ),
          ),
          SizedBox(height: 25,),
          Text("TRANSFER" ,style: setStyleContent(context,Colors.black,15,FontWeight.w300),),
          SizedBox(height: 10,),
          Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Daily Transfer Limit" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                            Text("N200,000" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: 300,
                          height: 8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 0.7,
                              valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                              backgroundColor: Color(0xffD6D6D6),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("N200,000  remaining" , style: setStyleContent(context,Colors.black,15,FontWeight.bold), textAlign: TextAlign.center,),
                        )
                      ],
                    )
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),  color: ColorConstant.lightGreyColor
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Monthly Transfer Limit" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                            Text("N200,000" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: 300,
                          height: 8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: LinearProgressIndicator(
                              value: 0.7,
                              valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                              backgroundColor: Color(0xffD6D6D6),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("N200,000  remaining" , style: setStyleContent(context,Colors.black,15,FontWeight.bold), textAlign: TextAlign.right,),
                        )
                      ],
                    )
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),  color: Colors.grey.shade200,
            ),
          ),
            ]
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