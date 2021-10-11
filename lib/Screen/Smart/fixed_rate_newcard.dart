import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/remove_card.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/Smart/summary.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class    FixedRateNewCard extends StatefulWidget{
  @override
    FixedRateNewCardState createState() =>    FixedRateNewCardState();
}

class    FixedRateNewCardState extends State <  FixedRateNewCard> with SingleTickerProviderStateMixin {

  bool switchControl = false;
  var textHolder = 'Switch is OFF';
  void toggleSwitch(bool value) {

    if(switchControl == false)
    {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else
    {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

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
                Text("ADD NEW CARD", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Card Number", style: setStyleContent(context,Colors.black,15,FontWeight.w600),),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          decoration: InputDecoration(
                            labelText: 'Card Number',
                            labelStyle:  setStyleContent(context,Colors.black,15,FontWeight.w300),
                            hintText: 'Enter here',
                            hintStyle: setStyleContent(context,Colors.black,15,FontWeight.w300),
                            hoverColor: Colors.deepPurpleAccent,
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Valid Date" ,style: setStyleContent(context,Colors.black,15,FontWeight.w600),),
                        Container(
                          width: 120.0,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            autofocus: false,
                            decoration: InputDecoration(
                              labelText: 'valid date',
                              labelStyle:  setStyleContent(context,Colors.black,15,FontWeight.w300),
                              hintStyle: setStyleContent(context,Colors.black,15,FontWeight.w300),
                              hoverColor: ColorConstant.primaryColor,
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CV/CVV2', style: setStyleContent(context,Colors.black,15,FontWeight.w600),),
                        Container(
                          width: 120.0,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            autofocus: false,
                            decoration: InputDecoration(
                              labelText: 'CV/CVV2',
                              labelStyle: setStyleContent(context,Colors.black,15,FontWeight.w300),
                              hintText: 'Enter here',
                              hintStyle:  setStyleContent(context,Colors.black,15,FontWeight.bold),
                              hoverColor:ColorConstant.primaryColor,
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('set as my default card' , style: setStyleContent(context,Colors.black,15,FontWeight.w600),),
                      Transform.scale(
                          scale: 1,
                          child: Switch(
                            onChanged: toggleSwitch,
                            value: switchControl,
                            activeColor: Colors.deepPurple.shade900,
                            activeTrackColor: Colors.white,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 235,),
                Align(
                  alignment: Alignment.center,
                  child: Text("Use Saved Card", style: setStyleContent(context,ColorConstant.greenColor,15,FontWeight.w300),),
                ),]
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
                      child: Text('Confirm Card', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Summary()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}