import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/confirm_request.dart';
import 'package:tanda/Screen/Tanda_Balance/confirm_transfer.dart';

class RequestPage extends StatefulWidget{
  @override
  RequestPageState createState() => RequestPageState();
}

class RequestPageState extends State <RequestPage>{

  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding:  EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("REQUEST MONEY", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 30,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                        Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/transcon.png",  fit: BoxFit.fill, height: 50,),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 30,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                        Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Center(
                  child: Text("#0.00", style: setStyleContent(context, ColorConstant.black, 30, FontWeight.bold),),
                ),
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
                      child: Text('Request Money', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ConfirmRequest()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}