import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Coach/congte.dart';
import 'package:tanda/Screen/Tanda_Balance/request_page.dart';

class GainTandaPoint extends StatefulWidget{
  @override
  GainTandaPointState createState() => GainTandaPointState();
}

class GainTandaPointState extends State <GainTandaPoint>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            padding:  EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("GAIN TANDA POINTS", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.bold),),
                    Image.asset("assets/images/tanda.png", height: 40,),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 180,
                  width: 350,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset("assets/images/instaaa.png",  fit: BoxFit.fill, height: 35,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Follow us on Instagram", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                Text("Follow our page on Instagram", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              child:   Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+5',
                                      style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.normal),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        onTap: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset("assets/images/instagram.png",),
                                        SizedBox(height: 10,),
                                        Text("FOLLOW US ON INSTAGRAM", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),textAlign: TextAlign.center,),
                                        Text("Follow Tanda on Insstagram to earn\nfree Tanda points", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),textAlign: TextAlign.center,),
                                        SizedBox(height: 10,),
                                        Container(
                                            width: 290,
                                            child: Center(
                                              child: Text("+5 free Tanda points", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),),
                                            ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            color: Colors.deepPurple.shade50,
                                          ),
                                        ),
                                        Container(
                                            height:ScreenUtil().setHeight(50.0),
                                            margin: EdgeInsets.all(20),
                                            width: MediaQuery.of(context).size.width,
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
                                                      child: Text('FOLLOW US ON INSTAGRAM', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
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

                                      ],
                                    )
                                  ],
                                );
                              }
                          );
                        },
                      ),
                      Divider(thickness: 2.0,),
                      GestureDetector(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset("assets/images/fbook.png",  fit: BoxFit.fill, height: 35,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Like us on Facebook", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                Text("Like our page on Facebook", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              child:   Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+5',
                                      style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.normal),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        onTap: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset("assets/images/faceebook.png",),
                                        SizedBox(height: 10,),
                                        Text("LIKE OUR PAGE ON FACEBOOK", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),textAlign: TextAlign.center,),
                                        Text("Like Tanda page on FACEBOOK to earn\nfree Tanda points", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),textAlign: TextAlign.center,),
                                        SizedBox(height: 10,),
                                        Container(
                                            width: 290,
                                            child: Center(
                                              child: Text("+5 free Tanda points", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),),
                                            ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            color: Colors.deepPurple.shade50,
                                          ),
                                        ),
                                        Container(
                                            height:ScreenUtil().setHeight(50.0),
                                            margin: EdgeInsets.all(20),
                                            width: MediaQuery.of(context).size.width,
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
                                                      child: Text('FOLLOW US ON FACEBOOK', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
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

                                      ],
                                    )
                                  ],
                                );
                              }
                          );
                        },
                      ),
                      Divider(thickness: 2.0,),
                      GestureDetector(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset("assets/images/twitt.png",  fit: BoxFit.fill, height: 35,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Like us on Twitter", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                Text("Follow and retweet on Twitter", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 50,

                              child:   Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+5',
                                      style: setStyleContent(context, ColorConstant.primaryColor, 15, FontWeight.normal),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                        onTap: (){
                          showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Image.asset("assets/images/twitter.png",),
                                        SizedBox(height: 10,),
                                        Text("FOLLOW US ON TWITTER", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),textAlign: TextAlign.center,),
                                        Text("Follow Tanda on FACEBOOK to earn\nfree Tanda points", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),textAlign: TextAlign.center,),
                                        SizedBox(height: 10,),
                                        Container(
                                            width: 290,
                                            child: Center(
                                              child: Text("+5 free Tanda points", style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),),
                                            ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            color: Colors.deepPurple.shade50,
                                          ),
                                        ),
                                        Container(
                                            height:ScreenUtil().setHeight(50.0),
                                            margin: EdgeInsets.all(20),
                                            width: MediaQuery.of(context).size.width,
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
                                                      child: Text('FOLLOW US ON TWITTER', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
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

                                      ],
                                    )
                                  ],
                                );
                              }
                          );
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorConstant.lightGreyColor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}