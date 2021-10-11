import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/Smart/reserve_fund_weekly.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/homepage.dart';

class SmartSettings extends StatefulWidget{
  @override
  SmartSettingsState createState() =>  SmartSettingsState();
}

class  SmartSettingsState extends State <SmartSettings> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.only(left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text("SETTINGS", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
                SizedBox(height: 5,),
                GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text("Pause Goal",  style: setStyleContent(context,Colors.grey,12,FontWeight.normal)),
                        TextFormField(
                          cursorColor: ColorConstant.black,
                          enabled: false,
                          style: setStyleContent(
                              context,
                              Color.fromRGBO(0, 0, 0, 0.7),
                              14,
                              FontWeight.normal),
                          decoration: InputDecoration(
                            labelStyle: setStyleContent(
                                context,
                                Colors.black,
                                16,
                                FontWeight.bold),
                            labelText: 'Pause Goal',
                            suffixIcon: ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 0, 0, 0.1)),
                            ),
                            border: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ],
                    ),
                  onTap: (){
                    pausegoal(context);
                  },
                ),
                SizedBox(height: 5,),
                GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text("Modify Goal",  style: setStyleContent(context,Colors.grey,12,FontWeight.normal)),
                        TextFormField(
                          cursorColor: ColorConstant.black,
                          enabled: false,
                          style: setStyleContent(
                              context,
                              Color.fromRGBO(0, 0, 0, 0.7),
                              14,
                              FontWeight.normal),
                          decoration: InputDecoration(
                            labelStyle: setStyleContent(
                                context,
                                Colors.black,
                                16,
                                FontWeight.bold),
                            labelText: 'Modify Goal',
                            suffixIcon: ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 0, 0, 0.1)),
                            ),
                            border: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ],
                    )
                ),
                GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text("Lock Goal",  style: setStyleContent(context,Colors.grey,12,FontWeight.normal)),
                        TextFormField(
                          cursorColor: ColorConstant.black,
                          enabled: false,
                          style: setStyleContent(
                              context,
                              Color.fromRGBO(0, 0, 0, 0.7),
                              14,
                              FontWeight.normal),
                          decoration: InputDecoration(
                            labelStyle: setStyleContent(
                                context,
                                Colors.black,
                                16,
                                FontWeight.bold),
                            labelText: 'Lock Goal',
                            suffixIcon: ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 0, 0, 0.1)),
                            ),
                            border: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1))),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ],
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

  pausegoal(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/warning.png"),
                  SizedBox(height: 10,),
                  Text("Pausing your goal means we won't\nwe won't be able to help you save automatically\nuntil tou unpause " , style:  setStyleContent(context,ColorConstant.redColor,12,FontWeight.w600),textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(100.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstant.primaryColor),
                          ),
                          child: Center(
                            child: Text('Cancel', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          confirmpausegoal(context);
                        },
                      ),
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(100.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:  ColorConstant.redColor,
                          ),
                          child: Center(
                            child: Text('Confirm', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          confirmpausegoal(context);
                        },
                      )
                    ],
                  )
                ],
              ),
            )
        );
      },
    );
  }

  confirmpausegoal(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/successlegit.png"),
                  SizedBox(height: 10,),
                  Text("Goal has been paused", style:  setStyleContent(context,ColorConstant.black,12,FontWeight.w300),),
                  SizedBox(height: 15,),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(200.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                                colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Center(
                            child: Text('OK', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ReservedFundWeekly()));
                        },
                      )
                    ],
                  )
                ],
              ),
            )
        );
      },
    );
  }
}