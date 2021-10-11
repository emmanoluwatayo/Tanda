import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/Smart/edit_save_goal.dart';
import 'package:tanda/Screen/Smart/reserved%20fund.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/linksuccess.dart';

class WeeklyReservedFund extends StatefulWidget{
  @override
  WeeklyReservedFundState createState() => WeeklyReservedFundState();
}

class WeeklyReservedFundState extends State <WeeklyReservedFund>{

  int currentIndex = 0;

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("SAVE", style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                        Text("Set And Forget", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                      ],
                    ),
                    Image.asset("assets/images/crox.png"),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child:  Container(
                    height: 170,
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
                                    Text("Reserve Fund" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                    Image.asset("assets/images/dollarcon.png")
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  width: 110,
                                  height: 20,
                                  child:Text("1 smart rules", style: setStyleContent(context,Colors.black,12,FontWeight.normal), textAlign: TextAlign.center,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),  color: ColorConstant.slightWhiteColor
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("#0.00" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                    Text("WeeklyReservedFundd" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),  color: ColorConstant.lightGreyColor
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => EditSaveGoal()));
                  },
                ),
                SizedBox(height: 25,),
                Container(
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                            onPressed: (){},
                            child:  Icon(Icons.add, color: ColorConstant.primaryColor,),
                            backgroundColor:ColorConstant.slightGreyColor),
                        SizedBox(height: 5,),
                        Text("Create a goal", style: setStyleContent(context,Colors.black,12,FontWeight.normal),)

                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        currentIndex: currentIndex,
        backgroundColor: ColorConstant.slightWhiteColor,
        selectedItemColor: ColorConstant.primaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: setStyleContent(context, ColorConstant.primaryColor,15,FontWeight.bold),
        unselectedLabelStyle: setStyleContent(context,ColorConstant.slightGreyColor,12,FontWeight.normal),
        onTap: (value) {
          // Respond to item press.
          setState(() => currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: ImageIcon(AssetImage("assets/icons/navhome.png",),size: 35,),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: ImageIcon(AssetImage("assets/icons/navsave.png",),size: 35,),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: ImageIcon(AssetImage("assets/icons/navinvest.png",),size: 35,),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: ImageIcon(AssetImage("assets/icons/navpay.png",),size: 35,),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: ImageIcon(AssetImage("assets/icons/navcoach.png",),size: 35,),
          ),
        ],
      ),
    );
  }
}