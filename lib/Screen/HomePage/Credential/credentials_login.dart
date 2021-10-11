import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/credentials_success.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class  LoginCredentials extends StatefulWidget{
  @override
  LoginCredentialstate createState() =>  LoginCredentialstate();
}

class  LoginCredentialstate extends State <LoginCredentials>{
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Image.asset("assets/images/firstbank.png",  fit: BoxFit.cover, height: 100,),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child:  Text('Use the credentials you make use to  \nlogin to your FirstBank/FirstBank App', style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: ColorConstant.lightGreyColor),
                    padding: EdgeInsets.all(15),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    child: Text("Using Web App Credentials, Tap here to switch" , style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.deepPurple.shade900, fontWeight: FontWeight.w600)),),
                  ),
                  SizedBox(height: 50,),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CredentialsSuccessful()));
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  AppButton(text: 'Login', onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => CredentialsSuccessful()));
                  }),
                  SizedBox(height: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/icons/lock.png",),),
                      Text("Security by okra" ,style: setStyleContent(context,ColorConstant.black, 15,FontWeight.normal),),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}