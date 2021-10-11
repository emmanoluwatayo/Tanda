import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class PasswordRecover extends StatefulWidget{
  @override
  PasswordRecoverState createState() => PasswordRecoverState();
}

class PasswordRecoverState extends State <PasswordRecover>{
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
                Text('Recover Password', style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                Text('Don\'t worry happens to the best of us',  style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                SizedBox(height:ScreenUtil().setHeight(56.0)),
                TextField(
                  keyboardType: TextInputType.emailAddress,
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
                SizedBox(height:ScreenUtil().setHeight(20.0)),
                AppButton(text: 'Reset Account', onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PhoneVerificationIndexScreen()));
                }),
              ],
            ),
          ),
        )
      )
    );
  }
}