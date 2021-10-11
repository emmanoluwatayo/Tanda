import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/link_method.dart';
import 'package:tanda/Screen/Smart/Fixed_rate.dart';

class InvestOpportunities extends StatefulWidget{
  @override
  InvestOpportunitiesState createState() => InvestOpportunitiesState();
}

class InvestOpportunitiesState extends State <InvestOpportunities>{
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
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 15,
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/tree.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Keep it clean",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Low risk", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LinkMethod()));
                      },
                    ),

                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/leaf.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Fixed Rate",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Low rate", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => FixedRate()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Game on",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Medium risk", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LinkMethod()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/tree.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Creative Thinking",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Mediumrisk", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LinkMethod()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/tree.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Keep it clean",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Low risk", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LinkMethod()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 100,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Keep it clean",  style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                    Text("Low risk", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),)
                                  ],
                                )

                              ],
                            ),
                          )
                      ),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => FixedRate()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}