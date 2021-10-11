import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  Support extends StatefulWidget{
  @override
  SupportState createState() =>  SupportState();
}

class  SupportState extends State <Support> with SingleTickerProviderStateMixin {
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
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 15,),
              Text("SUPPORT", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
              SizedBox(height: 25,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(AssetImage("assets/icons/managecard.png",), color: Colors.deepPurple.shade900, size: 50,),
                      Column(
                        children: [
                          Text("+2348745822112",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
                          Text("Our call center is open 24/7",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal)),),
                        ],
                      ),
                      Container(width: 50,),
                      ImageIcon(AssetImage("assets/icons/bluearrow.png",), color: Colors.deepPurple.shade900,),
                    ],
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE9E9E9)), borderRadius: BorderRadius.circular(8)),
                ),
                onTap: (){},
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(AssetImage("assets/icons/managecard.png",), color: Colors.deepPurple.shade900, size: 50,),
                      Column(
                        children: [
                          Text("Help@tandapay.ai",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
                          Text("Send us an email for any enquiry",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal)),),
                        ],
                      ),
                      Container(width: 50,),
                      ImageIcon(AssetImage("assets/icons/bluearrow.png",), color: Colors.deepPurple.shade900,),
                    ],
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE9E9E9)), borderRadius: BorderRadius.circular(8)),
                ),
                onTap: (){},
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(AssetImage("assets/icons/managecard.png",), color: Colors.deepPurple.shade900, size: 50,),
                      Column(
                        children: [
                          Text("+2348745822112",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
                          Text("Our call center is open 24/7",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal)),),
                        ],
                      ),
                      Container(width: 50,),
                      ImageIcon(AssetImage("assets/icons/bluearrow.png",), color: Colors.deepPurple.shade900,),
                    ],
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE9E9E9)), borderRadius: BorderRadius.circular(8)),
                ),
                onTap: (){},
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(AssetImage("assets/icons/managecard.png",), color: Colors.deepPurple.shade900, size: 50,),
                      Column(
                        children: [
                          Text("+2348745822112",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
                          Text("Our call center is open 24/7",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal)),),
                        ],
                      ),
                      Container(width: 50,),
                      ImageIcon(AssetImage("assets/icons/bluearrow.png",), color: Colors.deepPurple.shade900,),
                    ],
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE9E9E9)), borderRadius: BorderRadius.circular(8)),
                ),
                onTap: (){},
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(AssetImage("assets/icons/managecard.png",), color: Colors.deepPurple.shade900, size: 50,),
                      Column(
                        children: [
                          Text("+2348745822112",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
                          Text("Our call center is open 24/7",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal)),),
                        ],
                      ),
                      Container(width: 50,),
                      ImageIcon(AssetImage("assets/icons/bluearrow.png",), color: Colors.deepPurple.shade900,),
                    ],
                  ),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffE9E9E9)), borderRadius: BorderRadius.circular(8)),
                ),
                onTap: (){},
              ),
              ]
              ),
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
}