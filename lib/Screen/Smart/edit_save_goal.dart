import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Coach/congte.dart';
import 'package:tanda/Screen/Smart/Edit_Save2.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/Widget/Widget.dart';
import 'package:tanda/homepage.dart';

class EditSaveGoal extends StatefulWidget{
  @override
  EditSaveGoalState createState() => EditSaveGoalState();
}

class EditSaveGoalState extends State <EditSaveGoal>{
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:  20.0,),
                Image.asset("assets/icons/aeroplane.png"),
                SizedBox(height:  80.0,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Your Goal',
                    labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                    hintText: 'What is your Goal',
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
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                    hintText: '#0.00',
                    hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
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
                    labelText: 'Deadline',
                    labelStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300)),
                    hintText: 'Enter a date',
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
              ],
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
                      child: Text('Continue', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoachCongratulationsPage()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}