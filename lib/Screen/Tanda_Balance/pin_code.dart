import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/request_money.dart';
import 'package:tanda/Signup/Email.dart';
import 'package:tanda/Signup/create_password.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class PinCode extends StatefulWidget{
  @override
  PinCodeState createState() => PinCodeState();
}

class PinCodeState extends State <PinCode>{
  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
        child: Center(child: Text(text[position], style: TextStyle(color: Colors.black),)),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.slightWhiteColor,
        automaticallyImplyLeading: true,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "",
          style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
        ),
        // iconTheme: IconThemeData(color: blackColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: new EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ENTER PIN CODE', style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                Text('Please enter your pin code to continue\nyour transaction',  style: setStyleContent(context,Colors.black,12,FontWeight.normal),textAlign: TextAlign.center,),
                SizedBox(height:ScreenUtil().setHeight(60.0)),
                Container(
                  constraints: const BoxConstraints(
                      maxWidth: 500
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      otpNumberWidget(0),
                      otpNumberWidget(1),
                      otpNumberWidget(2),
                      otpNumberWidget(3),
                      otpNumberWidget(4),
                      otpNumberWidget(5),
                    ],
                  ),
                ),
                SizedBox(height:ScreenUtil().setHeight(20.0)),
                AppButton(text: 'Next', onPressed: (){
                  pincode(context) ;
                }),
                NumericKeyboard(
                  onKeyboardTap: _onKeyboardTap,
                  textColor: ColorConstant.black,
                  rightIcon: Icon(
                    Icons.backspace,
                    color: ColorConstant.black,
                  ),
                  rightButtonFn: () {
                    setState(() {
                      text = text.substring(0, text.length - 1);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  pincode(BuildContext context) async {
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
                    Image.asset("assets/images/smile.png"),
                    SizedBox(height: 10,),
                    Text( "Congratulations!" , style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                    Text("Your new bank account has\nbeen successfully added" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    GestureDetector(
                      child:  Container(
                        width: ScreenUtil().setWidth(100.0),
                        height: ScreenUtil().setHeight(50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
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
                        sadpincode(context) ;
                      },
                    )
                  ],
                )
            ),);});}

  sadpincode(BuildContext context) async {
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
                    Image.asset("assets/images/sad.png"),
                    SizedBox(height: 10,),
                    Text( "Opps!" , style: setStyleContent(context,ColorConstant.redColor,18,FontWeight.bold)),
                    Text("Your Tanda balance is not sufficient\nfor this transaction" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    Text("Do you want to top up?" , style:  setStyleContent(context,Colors.black,12,FontWeight.bold),textAlign: TextAlign.center,),
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
                              border: Border.all(color: ColorConstant.redColor,),),

                            child: Center(
                              child: Text('No', style: setStyleContent(context,ColorConstant.redColor, 15,FontWeight.normal),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => RequestMoney()));
                          },
                        ),
                        GestureDetector(
                          child:  Container(
                            width: ScreenUtil().setWidth(100.0),
                            height: ScreenUtil().setHeight(50.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                  colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Center(
                              child: Text('yes', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => RequestMoney()));
                          },
                        )
                      ],
                    ),
                  ],
                )
            ),);});}
}