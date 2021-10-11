import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Coach/congte.dart';

class FootBall extends StatefulWidget{
  @override
  FootBallState createState() => FootBallState();
}

class FootBallState extends State <FootBall>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1.0),
                  child: Image.asset("assets/images/legball.jpg",  fit: BoxFit.fill, height: 300,),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(

                    children: [
                      Text("How long does one soccer (football)\nperiod last?", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                      SizedBox(height: 20,),
                      GestureDetector(
                        child:  Container(
                          height: 50,
                          width: 300,
                          child: Center(
                            child: Text("90", style: setStyleContent(context, ColorConstant.primaryColor, 20, FontWeight.normal),),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12), color: ColorConstant.slightGreyColor, border: Border.all(color: ColorConstant.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        child:  Container(
                          height: 50,
                          width: 300,
                          child: Center(
                            child: Text("20", style: setStyleContent(context, ColorConstant.primaryColor, 20, FontWeight.normal),),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12), color: ColorConstant.slightGreyColor, border: Border.all(color: ColorConstant.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        child:  Container(
                          height: 50,
                          width: 300,
                          child: Center(
                            child: Text("30", style: setStyleContent(context, ColorConstant.primaryColor, 20, FontWeight.normal),),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12), color: ColorConstant.slightGreyColor, border: Border.all(color: ColorConstant.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        child:  Container(
                          height: 50,
                          width: 300,
                          child: Center(
                            child: Text("45", style: setStyleContent(context, ColorConstant.primaryColor, 20, FontWeight.normal),),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12), color: ColorConstant.slightGreyColor, border: Border.all(color: ColorConstant.primaryColor),
                          ),
                        ),
                      ),

                    ],
                  ),
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
                      child: Text('Continue', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    completemission(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }
  completemission(BuildContext context) async {
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
                    Image.asset("assets/images/loading.png"),
                    SizedBox(height: 10,),
                    Text( "Complete Mission!" , style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                    Text("Create the unique sweat out savings \ngoal where you get to \nsave #2,000 each week consecutively \nfor 12 months" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
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
                        successmission(context);
                      },
                    )
                  ],
                )
            ),);});}

  successmission(BuildContext context) async {
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
                    Image.asset("assets/images/successlegit.png"),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => TandaCoachCongratulationsPage()));
                      },
                    )
                  ],
                )
            ),);});}
}