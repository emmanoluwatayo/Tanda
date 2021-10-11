import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/connected_inst.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_homepage.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Signup/verify_phone_number.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class TandaEmail extends StatefulWidget{
  @override
  TandaEmailState createState() => TandaEmailState();
}

class TandaEmailState extends State <TandaEmail>{
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  SizedBox(height:  20.0,),
                  Text('Email', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                  SizedBox(height:ScreenUtil().setHeight(4.0)),
                  Text("We will then send a verification code",  style: setStyleContent(context,Colors.black,15,FontWeight.normal)),
                  SizedBox(height:ScreenUtil().setHeight(75.0)),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                      hintText: 'Enter here',
                      hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.w300),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          )
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
                      child: Text('Confirm Changes', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ConnectedInstitution()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}