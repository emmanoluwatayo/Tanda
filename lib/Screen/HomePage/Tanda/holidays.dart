import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/Widget/Widget.dart';
import 'package:tanda/homepage.dart';

class HolidayPage extends StatefulWidget{
  @override
  HolidayPageState createState() => HolidayPageState();
}

class HolidayPageState extends State <HolidayPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: new EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:  20.0,),
                Column(
                  children: [
                    ImageIcon(AssetImage('assets/icons/aeroplane.png'), color: ColorConstant.redColor,)
                  ],
                ),
                SizedBox(height:  10.0,),
                Align(
                  alignment: Alignment.centerRight,
                  child:  GestureDetector(
                    child:  Text('Forgot password?', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),),

                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => PasswordRecover()));
                    },
                  ),
                ),
                SizedBox(height: 30,),
                AppButton(text: 'Login', onPressed: (){

                }),

                SizedBox(height: 20,),

                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(AssetImage("assets/icons/print.png",), color:  ColorConstant.primaryColor,),
                        SizedBox(
                          width: 10,
                        ),

                        Text('Sign In with finger print', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 170,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Don\'t have an account?', style: setStyleContent(context,Colors.black, 15,FontWeight.w500),),
                        GestureDetector(
                          child:  Text('Register', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.w500),),

                          onTap: (){},
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}