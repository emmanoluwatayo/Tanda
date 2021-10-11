import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/Smart/Edit_smart_rule.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/Smart/weekly_reserved_funds.dart';
import 'package:tanda/Screen/linksuccess.dart';

class EditSetAndForget extends StatefulWidget{
  @override
  EditSetAndForgetState createState() => EditSetAndForgetState();
}

class EditSetAndForgetState extends State <EditSetAndForget>{

  int n = 0;

  void add() {
    setState(() {
      n++;
    });
  }

  void minus() {
    setState(() {
      if (n != 0)
        n--;
    });
  }
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("SMART RULE", style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                        Text("Set And Forget", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                      ],
                    ),
                    Image.asset("assets/images/coinround.png"),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Text("Every week, set aside #", style: setStyleContent(context,Colors.grey,15,FontWeight.w600),),
                    SizedBox(height: 15,),
                    Container(
                      child:  Center(
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingActionButton(
                                onPressed: minus,
                                child:  Icon(Icons.remove, color: ColorConstant.slightWhiteColor,),
                                backgroundColor:ColorConstant.primaryColor),

                            Text('$n',
                              style:  setStyleContent(context,Colors.black,50,FontWeight.normal),),

                            FloatingActionButton(
                                onPressed: add,
                                child:  Icon(Icons.add, color: ColorConstant.slightWhiteColor,),
                                backgroundColor:ColorConstant.primaryColor),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 320,
                      height: 100,
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset("assets/images/maskgroup4.png"),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Container(
                              width: 285,
                              height: 110,
                              margin: EdgeInsets.only(left:8, bottom: 30),
                              padding: EdgeInsets.only(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Did You Know?",
                                    style: setStyleContent(context,Colors.black,18,FontWeight.bold),
                                  ),
                                  Text(
                                    "You can set up more \nsmart rule",
                                    style: setStyleContent(context,Colors.black,12,FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  child:  Center(
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FloatingActionButton(
                            onPressed: add,
                            child:  Icon(Icons.add, color: ColorConstant.slightWhiteColor,),
                            backgroundColor:ColorConstant.primaryColorTwo),
                        SizedBox(height: 5,),
                        Text("Set a Smart Rule", style: setStyleContent(context,Colors.black,12,FontWeight.normal),)

                      ],
                    ),
                  ),
                ),
              ]),
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
                      child: Text('Add Goal', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}