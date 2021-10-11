import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Signup/know_yourself.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class CreatPassword extends StatefulWidget{
  @override
  CreatPasswordState createState() => CreatPasswordState();
}

class CreatPasswordState extends State <CreatPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
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
              Text('Create Password', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
              Text('Please set a password for ur account',   style: setStyleContent(context,Colors.black,12,FontWeight.normal)),
              SizedBox(height:  80.0,),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hoverColor: Colors.deepPurpleAccent,
                  labelText: 'Creat Password',
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
              SizedBox(height: 20,),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hoverColor: Colors.deepPurpleAccent,
                  labelText: 'New Password',
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
              SizedBox(height: 50,),
              AppButton(text: 'Next', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => KnowYourself()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}