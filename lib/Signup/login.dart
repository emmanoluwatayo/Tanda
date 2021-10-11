import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/Widget/Widget.dart';
import 'package:tanda/homepage.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State <LoginPage>{
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
                 Text('Log in', style: setStyleContent(context,Colors.black,30,FontWeight.bold) ),
                SizedBox(height:  12.0,),
                Text('Enter your email and password \n to log into your account',  style: setStyleContent(context,Colors.black,18,FontWeight.normal),),
                SizedBox(height:  80.0,),
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
                SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hoverColor: Colors.deepPurpleAccent,
                    labelText: 'Password',
                    labelStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300)),
                    hintText: 'Enter here',
                    hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w300)),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.visibility,color: ColorConstant.black,),
                    ),
                  ),
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