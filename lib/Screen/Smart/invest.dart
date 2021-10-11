import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';

class Invest extends StatefulWidget{
  @override
  InvestState createState() => InvestState();
}

class InvestState extends State <Invest>{
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
                Text("INVEST", style: setStyleContent(context,ColorConstant.black, 15, FontWeight.normal),),
                Text("#0.00", style: setStyleContent(context,ColorConstant.primaryColorTwo, 20, FontWeight.bold),),
                Text("+#0.00 (+0.00%)", style: setStyleContent(context,ColorConstant.primaryColorTwo, 12, FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child:  Container(
                        width: ScreenUtil().setWidth(150.0),
                        height: ScreenUtil().setHeight(50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          gradient: LinearGradient(
                              colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Center(
                          child: Text('Portfolio', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                          ),
                        ),
                      ),
                      onTap: (){
                      },
                    ),
                    GestureDetector(
                      child:  Container(
                        width: ScreenUtil().setWidth(150.0),
                        height: ScreenUtil().setHeight(50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29),
                          border: Border.all(color: ColorConstant.primaryColor)
                        ),
                        child: Center(
                          child: Text('Opportunities', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                          ),
                        ),
                      ),
                      onTap: (){
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("INVEST WITH TANDA"),
                GestureDetector(
                  child:  Container(
                    padding: EdgeInsets.all(10),
                    width: ScreenUtil().setWidth(350.0),
                    height: ScreenUtil().setHeight(200.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                      color: ColorConstant.slightGreyColor
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/icons/trade.png'),
                        Text("Try Tanda Invest" , style: setStyleContent(context,ColorConstant.black, 15, FontWeight.bold),),
                        Text("Diversify your investment by choosing the product that best represent you \nand nabage your portfolio completely in app, \nin an easy and intuitive way", style: setStyleContent(context,ColorConstant.black, 12, FontWeight.normal),),
                        Text("See opportunities", style: setStyleContent(context,ColorConstant.primaryColorTwo, 12, FontWeight.bold),),
                      ],
                    )
                  ),
                  onTap: (){
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}