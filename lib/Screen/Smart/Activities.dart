import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/savings_goal.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class Activities extends StatefulWidget{
  @override
  ActivitiesState createState() => ActivitiesState();
}

class ActivitiesState extends State <Activities>{
  GlobalKey<FormState> _formKey = GlobalKey();
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
                  SizedBox(height:  2.0,),
                  Text('ACTIVITIES', style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                  SizedBox(height:ScreenUtil().setHeight(35.0)),
                  Text("JULY 2021", style: setStyleContent(context,Colors.grey,12,FontWeight.normal),),
                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/pluss.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Weekly Top Up" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("2 July 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("+#2,050" , style: setStyleContent(context,ColorConstant.greenColor,15,FontWeight.normal),),
                                  ],
                                ),
                                Divider(thickness: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/pluss.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Round Up" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("25 July 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("+#2,050" , style: setStyleContent(context,ColorConstant.greenColor,15,FontWeight.normal),),
                                  ],
                                ),
                                Divider(thickness: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/plusout.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Withdrawal" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("16 july 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("-#2,050" , style: setStyleContent(context,ColorConstant.redColor,15,FontWeight.normal),),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),  color: ColorConstant.slightGreyColor
                    ),
                  ),
                  SizedBox(height:ScreenUtil().setHeight(20.0)),
                  Text("AUGUST 2021", style: setStyleContent(context,Colors.grey,12,FontWeight.normal),),
                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/pluss.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(" 52Weekly Rule" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("2 August 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("+#2,050" , style: setStyleContent(context,ColorConstant.greenColor,15,FontWeight.normal),),
                                  ],
                                ),
                                Divider(thickness: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/pluss.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Weekly Top UP" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("25 August 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("+#2,050" , style: setStyleContent(context,ColorConstant.greenColor,15,FontWeight.normal),),
                                  ],
                                ),
                                Divider(thickness: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/plusout.png"),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Withdrawal" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                        Text("16 july 2021" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                      ],
                                    ),
                                    Text("-#2,050" , style: setStyleContent(context,ColorConstant.redColor,15,FontWeight.normal),),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),  color: ColorConstant.slightGreyColor
                    ),
                  ),
                ],
              ),
            ),
          )
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
              ],
            )
        ),
      ),
    );
  }
}