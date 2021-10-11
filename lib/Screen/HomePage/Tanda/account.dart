import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Screen/HomePage/Tanda/all_about_you.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Widget/AccountWidget.dart';

class  AccountSettings extends StatefulWidget{
  @override
  AccountSettingsState createState() =>  AccountSettingsState();
}

class  AccountSettingsState extends State <AccountSettings> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
               margin: EdgeInsets.all(12),
              child: Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text("ACCOUNT SETTINGS", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
                    SizedBox(height: 25,),

                    AccountWidget(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => AllAboutYouScreenIndex()));
                      },
                      image: 'assets/icons/about.png',
                      color: Colors.black,
                      text: "ALL ABOUT YOU",

                    ),
                    SizedBox(height: 10,),

                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/managecard.png',
                      color: Colors.black,
                      text: "MANAGE CARDS",

                    ),
                    SizedBox(height: 10,),

                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/refer.png',
                      color: Colors.black,
                      text: "REFER AND EARN",

                    ),

                    SizedBox(height: 10,),

                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/tandareward.png',
                      color: Colors.black,
                      text: "TANDA REWARDS",

                    ),
                    SizedBox(height: 10,),
                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/connected.png',
                      color: Colors.black,
                      text: "CONNECTED BANK",

                    ),

                    SizedBox(height: 10,),

                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/trans.png',
                      color: Colors.black,
                      text: "TRANSFER LIMITS",

                    ),
                    SizedBox(height: 10,),

                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/helpcenter.png',
                      color: Colors.black,
                      text: "HELP CENTER",
                    ),
                    SizedBox(height: 10,),
                    AccountWidget(
                      onPressed: () {  },
                      image: 'assets/icons/logout.png',
                      color: Colors.red,
                      text: "LOG OUT",
                    ),
                  ],
                ),
              )
            )
          ),
        ),
        bottomNavigationBar: Material(
        elevation: 3.0,
        color: Colors.white,
        child: Container(
          height:ScreenUtil().setHeight(25.0),
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.arrow_back_sharp,color: ColorConstant.freyColor,),
          )
        ),
      ),
    );
  }
}

