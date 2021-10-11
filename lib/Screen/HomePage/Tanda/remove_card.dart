import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Credential/confirm.dart';
import 'package:tanda/Screen/HomePage/Tanda/reward.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  RemoveCard extends StatefulWidget{
  @override
  RemoveCardState createState() =>  RemoveCardState();
}

class  RemoveCardState extends State <RemoveCard> with SingleTickerProviderStateMixin {

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
          Text("REMOVE CARD", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
          SizedBox(height: 25,),
          Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("YOUR VISA CARD" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)),
                                Text("483009*********80" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.normal,),)),
                              ],
                            ),
                            Image.asset("assets/images/visa.png")
                          ],
                        ),
                      ],
                    )
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),  color: Colors.grey.shade200,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('set as my default card' , style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),),
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
            ]
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
                          colors: [ColorConstant.redColor, ColorConstant.redColor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Center(
                      child: Text('Remove Card', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    onAlertWithCustomImagePressed(context) ;
                  },
                )
              ],
            )
        ),
      ),
    );
  }
  onAlertWithCustomImagePressed(context) {
    Alert(
      context: context,
      desc: "Card Removed Successfully",
      image: Image.asset("assets/images/successlegit.png"),
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Reward())),
          color: ColorConstant.primaryColor,
          radius: BorderRadius.circular(10.0),
        ),
      ],
    ).show();
  }

  asyncInputCDialog(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter current team'),
          content: new Row(
            children: [
              Expanded(
                  child: TextField(
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
              )
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop(teamName);
              },
            ),
          ],
        );
      },
    );
  }
}