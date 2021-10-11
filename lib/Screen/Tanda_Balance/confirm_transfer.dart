import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/pin_code.dart';

class ConfirmTransfer extends StatefulWidget{
  @override
  ConfirmTransferState createState() => ConfirmTransferState();
}

class ConfirmTransferState extends State <ConfirmTransfer>{
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
                Text("CONFIRM TRANSFER", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 30,),
                      ),
                    ),
                    Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                    Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 330,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: ColorConstant.lightGreyColor
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("You send exactly", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                          Text("#2,000", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                        ],
                      ),
                      Divider(thickness: 2,),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Isaac gets",  style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                          Text("#2,000", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                        ],
                      ),
                      Divider(thickness: 2,),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Fee", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                          Text("Free", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                        ],
                      ),
                    ],
                  )
                )
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
                      child: Text('Confirm Payment', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => PinCode()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}