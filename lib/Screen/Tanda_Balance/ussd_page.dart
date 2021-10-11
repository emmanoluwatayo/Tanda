import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/balance_account_select.dart';

class USSD extends StatefulWidget{
  USSDState createState() => USSDState();
}

class USSDState extends State <USSD>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:  20.0,),
                Text('PAY WITH USSD', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                SizedBox(height:ScreenUtil().setHeight(20.0)),
                Text('Dail the code below to complete the payment', style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                Text('*232*000*2124#', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                Text('Click here to copy the code', style: setStyleContent(context,ColorConstant.primaryColor,12,FontWeight.bold),textAlign: TextAlign.center,),
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
                      child: Text('I have completed the payment', style: setStyleContent(context,ColorConstant.slightWhiteColor, 12,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AccountSelect()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}