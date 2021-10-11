import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/Tanda_Balance/balance_add_card.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  TandaSelectCard extends StatefulWidget{
  @override
  TandaSelectCardState createState() =>  TandaSelectCardState();
}

class  TandaSelectCardState extends State <TandaSelectCard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                SizedBox(height: 15,),
                Text("SELECT CARDS",style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("YOUR VISA CARD" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("483009*********80" , style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
                                    ],
                                  ),
                                  Image.asset("assets/images/visa.png")
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),  color:ColorConstant.lightGreyColor,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("YOUR MASTER CARD" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("483009*********80" , style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
                                    ],
                                  ),
                                  Image.asset("assets/images/mastercard.png")
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),   color:ColorConstant.lightGreyColor,
                  ),
                ),]
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
                      child: Text('Add New Card', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaNewCard()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}