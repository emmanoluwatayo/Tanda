import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/modify_fixed_rate.dart';

class   InvestPortfolio extends StatefulWidget{
  @override
    InvestPortfolioState createState() =>   InvestPortfolioState();
}

class   InvestPortfolioState extends State <  InvestPortfolio>{
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
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                    width: ScreenUtil().setWidth(330.0),
                    height: ScreenUtil().setHeight(120.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                         color: ColorConstant.slightGreyColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Fixed Rate",  style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                                Text("+#0.00(+0.00%)", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),)
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset("assets/images/leaf.png",  fit: BoxFit.fill, height: 30,),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("#20,000", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                            Container(
                              height: 18,
                              width: 100,
                              child: Text("pending", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8), color:ColorConstant.lightGreyColor
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ModifyFixedRate()));
                  },
                ),
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(330.0),
                      height: ScreenUtil().setHeight(120.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorConstant.slightGreyColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Real Estate",  style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                                  Text("+#0.00(+2.00%)", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),)
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 30,),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("#20,000", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                              Container(
                                height: 18,
                                width: 100,
                                child: Text("pending", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8), color:ColorConstant.lightGreyColor
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                  onTap: (){
                  },
                ),
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(330.0),
                      height: ScreenUtil().setHeight(120.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorConstant.slightGreyColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Fixed Rate",  style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                                  Text("+#0.00(+3.00%)", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),)
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset("assets/images/tree.png",  fit: BoxFit.fill, height: 30,),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("#20,000", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                              Container(
                                height: 18,
                                width: 100,
                                child: Text("active", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8), color:ColorConstant.lightGreyColor
                                ),
                              ),
                            ],
                          )
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