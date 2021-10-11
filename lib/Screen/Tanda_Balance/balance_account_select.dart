import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_homepage.dart';
import 'package:tanda/Screen/HomePage/Tanda/transfer_limit.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/Tanda_Balance/select_a_bank.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  AccountSelect extends StatefulWidget{
  @override
  AccountSelectState createState() =>  AccountSelectState();
}

class  AccountSelectState extends State <AccountSelect> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  Text("SELECT AN ACCOUNT", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
                  SizedBox(height: 25,),
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text("PALMSLAND CONSULT" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,),)),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("FirstBank of Nigeria PLC" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,),)),
                              Text("234567891" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,),)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),  color: ColorConstant.lightGreyColor,
                    ),
                  ),]
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
                      child: Text('Add a new Bank', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SelectBank()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}