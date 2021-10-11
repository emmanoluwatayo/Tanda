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

class  TrackReferral extends StatefulWidget{
  @override
  TrackReferralState createState() =>  TrackReferralState();
}

class  TrackReferralState extends State <TrackReferral> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  Text("TRACK YOUR REFERRALS", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey.shade300,
                                          border: Border.all(color:  ColorConstant.primaryColor ),
                                        ),
                                        child: Text('N250' , style: setStyleContent(context,ColorConstant.primaryColor,15,FontWeight.normal),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Adamu" ,style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                                        Text("Sunday, june 20th 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                        Text("Waiting for friend to sign up" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10.0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color:  ColorConstant.slightGreyColor,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey.shade300,
                                          border: Border.all(color:  ColorConstant.primaryColor ),
                                        ),
                                        child:Text('N250' , style: setStyleContent(context,ColorConstant.primaryColor,15,FontWeight.normal),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Lauren" , style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                                        Text("Sunday, june 20th 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                        Text("Waiting for friend to sign up" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10.0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color:  ColorConstant.slightGreyColor,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey.shade300,
                                          border: Border.all(color:  ColorConstant.primaryColor ),
                                        ),
                                        child: Text('N250' , style: setStyleContent(context,ColorConstant.primaryColor,15,FontWeight.normal),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Eze" ,style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                                        Text("Sunday, june 20th 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                        Text("Waiting for friend to sign up" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10.0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color:  ColorConstant.slightGreyColor,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: ColorConstant.primaryColor,
                                          border: Border.all(color:  ColorConstant.primaryColor ),
                                        ),
                                        child: Text('N250' , style: setStyleContent(context,ColorConstant.slightWhiteColor,15,FontWeight.normal),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Ayodeji" , style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                                        Text("Sunday, june 20th 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                        Text("Waiting for friend to sign up" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10.0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color:  ColorConstant.slightGreyColor,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 60,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: ColorConstant.primaryColor,
                                          border: Border.all(color:  ColorConstant.primaryColor ),
                                        ),
                                        child: Text('N250' , style: setStyleContent(context,ColorConstant.slightWhiteColor,15,FontWeight.normal),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Lauren" , style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                                        Text("Sunday, june 20th 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                        Text("Waiting for friend to sign up" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10.0,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 20),
                                      width: 60,
                                      height: 8,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 10,
                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                          backgroundColor: Color(0xffD6D6D6),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),  color: ColorConstant.slightGreyColor,
                    ),
                  ),]
            ),
          ),
        ),
      ),
        bottomNavigationBar: Material(
          elevation: 1.0,
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
                    child: Icon(Icons.arrow_back_sharp,color:  ColorConstant.slightGreyColor,),
                  ),
                ],
              )
          ),
        )
    );
  }
}