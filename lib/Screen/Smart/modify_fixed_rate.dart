import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/fixed_rate_buy.dart';
import 'package:tanda/Screen/Smart/modify_fixedbuy.dart';

class ModifyFixedRate extends StatefulWidget{
  @override
  ModifyFixedRateState createState() => ModifyFixedRateState();
}

class ModifyFixedRateState extends State <ModifyFixedRate>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Fixed Rate", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                          Container(
                            height: 18,
                            width: 150,
                            child: Text("Limited Availability", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8), color: Colors.amber
                            ),
                          ),
                        ]
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/leaf.png",  fit: BoxFit.fill, height: 100,),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child:  Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(10),
                          width: ScreenUtil().setWidth(150.0),
                          height: ScreenUtil().setHeight(90.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.lightGreyColor
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Interest", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                  Text("Rate", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                  Text("2%", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                                ],
                              ),
                              Image.asset("assets/icons/div.png",),
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
                          width: ScreenUtil().setWidth(150.0),
                          height: ScreenUtil().setHeight(90.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.lightGreyColor
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text("Investment", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                  Text("Maturity", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                                  Text("8%", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                                ],
                              ),
                              Image.asset("assets/icons/clok.png",),
                            ],
                          )
                      ),
                      onTap: (){
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(330.0),
                      height: ScreenUtil().setHeight(90.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.lightGreyColor
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Start Date", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.bold),),
                              Text("29 September 2021", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.bold),),
                            ],
                          ),
                          Image.asset("assets/icons/cal.png",),
                        ],
                      )
                  ),
                  onTap: (){
                  },
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(330.0),
                      height: ScreenUtil().setHeight(250.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.lightGreyColor
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Maturity Date", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("29 September 2021", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Opening contribution", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("#20,050", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Management fee", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("0%", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Interest fee", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("2%", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Minimum holding period", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("60DAYS", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Early redemption cost", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              Text("1.99%", style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.bold),),
                            ],
                          ),
                        ],
                      )
                  ),
                  onTap: (){
                  },
                ),
                SizedBox(height: 5,),
                GestureDetector(
                  child:  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(330.0),
                      height: ScreenUtil().setHeight(120.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.lightGreyColor
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Risk level:", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                              Text("Low", style: setStyleContent(context, ColorConstant.greenColor, 15, FontWeight.bold),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: 60,
                                height: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 10.0,
                                    valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                    backgroundColor: ColorConstant.slightWhiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: 60,
                                height: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                    backgroundColor:  ColorConstant.slightWhiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: 60,
                                height: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                    backgroundColor:  ColorConstant.slightWhiteColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: 60,
                                height: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0,
                                    valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                                    backgroundColor:  ColorConstant.slightWhiteColor,
                                  ),
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
                    width: ScreenUtil().setWidth(100.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      border: Border.all(color: ColorConstant.redColor)
                    ),
                    child: Center(
                      child: Text('Cancel', style: setStyleContent(context,ColorConstant.redColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    modifyfixed(context);
                  },
                ),
                GestureDetector(
                  child:  Container(
                    width: ScreenUtil().setWidth(100.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Center(
                      child: Text('Modify', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ModifyFixedRateWithdraw()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
  modifyfixed(BuildContext context) async {
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
                  Text("Are you sure you want to\ncancel this?", style:  setStyleContent(context,ColorConstant.black,12,FontWeight.w300), textAlign: TextAlign.center,),
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
                              border: Border.all(color: ColorConstant.greenColor)
                          ),
                          child: Center(
                            child: Text('No', style: setStyleContent(context,ColorConstant.redColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ModifyFixedRateWithdraw()));
                        },
                      ),
                      GestureDetector(
                        child:  Container(
                          width: ScreenUtil().setWidth(100.0),
                          height: ScreenUtil().setHeight(50.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:ColorConstant.redColor,

                          ),
                          child: Center(
                            child: Text('Yes', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ModifyFixedRateWithdraw()));
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