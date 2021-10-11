import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Signup/Email.dart';
import 'package:tanda/Signup/create_password.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class VerifyEmail extends StatefulWidget{
  @override
  VerifyEmailState createState() => VerifyEmailState();
}

class VerifyEmailState extends State <VerifyEmail>{
  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
        child: Center(child: Text(text[position], style: TextStyle(color: Colors.black),)),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.slightWhiteColor,
        automaticallyImplyLeading: true,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "",
          style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
        ),
        // iconTheme: IconThemeData(color: blackColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: new EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Verify Your Email', style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                Text('We have sent a verification code to your email',  style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                Text('anyone@gmail.com', style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                SizedBox(height:ScreenUtil().setHeight(60.0)),
                Container(
                  constraints: const BoxConstraints(
                      maxWidth: 500
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      otpNumberWidget(0),
                      otpNumberWidget(1),
                      otpNumberWidget(2),
                      otpNumberWidget(3),
                      otpNumberWidget(4),
                      otpNumberWidget(5),
                    ],
                  ),
                ),
                SizedBox(height:ScreenUtil().setHeight(20.0)),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child:  Text("send the code again", style: setStyleContent(context,ColorConstant.primaryColor,12,FontWeight.bold),),
                    ),
                    Text("00:53", style: setStyleContent(context,Colors.black,12,FontWeight.bold),),
                  ],
                ),
                SizedBox(height:ScreenUtil().setHeight(20.0)),
                AppButton(text: 'Next', onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => CreatPassword()));
                }),
                NumericKeyboard(
                  onKeyboardTap: _onKeyboardTap,
                  textColor: ColorConstant.black,
                  rightIcon: Icon(
                    Icons.backspace,
                    color: ColorConstant.black,
                  ),
                  rightButtonFn: () {
                    setState(() {
                      text = text.substring(0, text.length - 1);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}