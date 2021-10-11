import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/update_password.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/homepage.dart';

class AllAboutYouScreenIndex extends StatefulWidget{
  @override
  _AllAboutYouScreenIndexState createState() =>  _AllAboutYouScreenIndexState();
}

class  _AllAboutYouScreenIndexState extends State <AllAboutYouScreenIndex> {
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
                  Text("ALL ABOUT YOU", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
                  SizedBox(height: 5,),
                  TextFormField(
                    cursorColor: ColorConstant.black,
                    style: setStyleContent(
                        context,
                        Color.fromRGBO(0, 0, 0, 0.7),
                        14,
                        FontWeight.normal),
                    decoration: InputDecoration(
                      labelStyle: setStyleContent(
                          context,
                          Color.fromRGBO(0, 0, 0, 0.3),
                          16,
                          FontWeight.normal),
                      labelText: 'Name',
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

                  SizedBox(height: 5,),
                  GestureDetector(
                    child: TextFormField(
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
                            Color.fromRGBO(0, 0, 0, 0.3),
                            16,
                            FontWeight.normal),
                        labelText: 'Date of Birth',
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
                  ),

                  SizedBox(height: 5,),
                  TextFormField(
                    cursorColor: ColorConstant.black,
                    style: setStyleContent(
                        context,
                        Color.fromRGBO(0, 0, 0, 0.7),
                        14,
                        FontWeight.normal),
                    decoration: InputDecoration(
                      labelStyle: setStyleContent(
                          context,
                          Color.fromRGBO(0, 0, 0, 0.3),
                          16,
                          FontWeight.normal),
                      labelText: 'Phone Number',
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


                  SizedBox(height: 5,),
                  GestureDetector(
                    child: TextFormField(
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
                            Color.fromRGBO(0, 0, 0, 0.3),
                            16,
                            FontWeight.normal),
                        labelText: 'Email Address',
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
                  ),
                  SizedBox(height: 5,),

                  TextFormField(
                    cursorColor: ColorConstant.black,
                    style: setStyleContent(
                        context,
                        Color.fromRGBO(0, 0, 0, 0.7),
                        14,
                        FontWeight.normal),
                    decoration: InputDecoration(
                      labelStyle: setStyleContent(
                          context,
                          Color.fromRGBO(0, 0, 0, 0.3),
                          16,
                          FontWeight.normal),
                      labelText: 'Currency',
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
                  SizedBox(height: 30,),
                  Text("SECURITY", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
                  SizedBox(height: 5,),
                  GestureDetector(
                    child: TextFormField(
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
                            Color.fromRGBO(0, 0, 0, 0.3),
                            16,
                            FontWeight.normal),
                        labelText: 'Password',
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
                  ),
                  SizedBox(height: 5,),
                  GestureDetector(
                    child: TextFormField(
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
                            Color.fromRGBO(0, 0, 0, 0.3),
                            16,
                            FontWeight.normal),
                        labelText: 'Set Pin',
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
                GestureDetector(
                  child:Container(
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
                      child: Text('Confirm Changes', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => UpdatePassword()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}