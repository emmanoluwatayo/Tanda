import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/setting_goal.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class GoalDate extends StatefulWidget{
  @override
  GoalDateState createState() => GoalDateState();
}

class GoalDateState extends State <GoalDate>{
  GlobalKey<FormState> _formKey = GlobalKey();
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:  2.0,),
                  Text('EDIT GOAL DATE', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                  SizedBox(height:ScreenUtil().setHeight(75.0)),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Old Goal Date',
                      labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                      hintText: '20-10-2021',
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
                  SizedBox(height:ScreenUtil().setHeight(10.0)),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'New Goal Date',
                      labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                      hintText: '30-10-2021',
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
                ],
              ),
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
                      child: Text('Confirm Changes' , style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    warning(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }
  warning(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/warning.png"),
                  SizedBox(height: 10,),
                  Text("Pausing your goal means we won't\nwe won't be able to help you save automatically\nuntil tou unpause " , style:  setStyleContent(context,ColorConstant.redColor,12,FontWeight.w600),textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(100.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstant.primaryColor),
                          ),
                          child: Center(
                            child: Text('Cancel', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SettingGoal()));
                        },
                      ),
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(100.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:  ColorConstant.redColor,
                          ),
                          child: Center(
                            child: Text('Confirm', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SettingGoal()));
                        },
                      )
                    ],
                  )
                ],
              ),
            )
        );
      },
    );
  }
}