import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/save.dart';
import 'package:tanda/Screen/Smart/save_goal.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Widget/ButtonWidget.dart';
import 'package:tanda/Widget/Widget.dart';
import 'package:tanda/homepage.dart';

class EditSmartRule extends StatefulWidget{
  @override
  EditSmartRuleState createState() => EditSmartRuleState();
}

class EditSmartRuleState extends State <EditSmartRule>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                Text("ADD SMART RULE", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child:  Container(
                        width: 320,
                        height: 100,
                        child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset("assets/images/maskgroup1.png"),
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
                                      "Round Up Rule",
                                      style: setStyleContent(context,Colors.black,18,FontWeight.bold),
                                    ),
                                    Text(
                                      "Round up every transaction and\nset aside the spare change",
                                      style: setStyleContent(context,Colors.black,12,FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        editroundup(context);
                      },
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child:  Container(
                        width: 320,
                        height: 100,
                        child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset("assets/images/maskgroup2.png", width: 500, height: 200,),
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
                                      "Payday Rule",
                                      style: setStyleContent(context,Colors.black,18,FontWeight.bold),
                                    ),
                                    Text(
                                      "Save a percentage everytime you get\na minimum deposit of a certain\namount in your bank account",
                                      style: setStyleContent(context,Colors.black,12,FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        editpayday(context);
                      },
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child:  Container(
                        width: 320,
                        height: 100,
                        child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset("assets/images/maskgroup3.png"),
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
                                      "52 Weeks Rule",
                                      style: setStyleContent(context,Colors.black,18,FontWeight.bold),
                                    ),
                                    Text(
                                      "Save N100 week1, N200 week2\nand so on for a whole year",
                                      style: setStyleContent(context,Colors.black,12,FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        editweeks(context);
                      },
                    )
                  ],
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
                      child: Text('Set Reserved Funds', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    editnewcongratulations(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }

  editnewcongratulations(BuildContext context) async {
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
                    Text("You have successfully set up your reserve fund.\nTanda also offers ypu the chance to create\nas many goals as you like" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SaveGoal()));
                      },
                    )
                  ],
                )
            ),);});}


  editroundup(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/coinn.png"),
                  SizedBox(height: 10,),
                  Text("Round Up Rule" , style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                  Text("Round up each time you use your \ncard. Save the change" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Round up to',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: '#100',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Save Toward',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: 'Reserved fund',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
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
                            border: Border.all(color: ColorConstant.primaryColor),
                          ),
                          child: Center(
                            child: Text('Cancel', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
                        },
                      ),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
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

  editpayday(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/paydey.png"),
                  SizedBox(height: 10,),
                  Text("Payday Rule", style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                  Text("Save a percentage everytime you recieve a minimum deposit \nin your account" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Amount to save ',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: '10%',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Save on other deposit over',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: '#30,000',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Save Toward',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: 'Reserved fund',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
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
                            border: Border.all(color: ColorConstant.primaryColor),
                          ),
                          child: Center(
                            child: Text('Cancel', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
                        },
                      ),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
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

  editweeks(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/paydey.png"),
                  SizedBox(height: 10,),
                  Text("52 Weeks Rule", style: setStyleContent(context,Colors.black,18,FontWeight.bold)),
                  Text("Save N100 week1, N200 week2\nand so on for a whole year", style:  setStyleContent(context,Colors.black,12,FontWeight.w300),),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Order ',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: 'Ascending',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Save on',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: '1',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Save Toward',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: 'Reserved fund',
                        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.bold),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                        ),
                      ),
                    ),
                  ),
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
                            border: Border.all(color: ColorConstant.primaryColor),
                          ),
                          child: Center(
                            child: Text('Cancel', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
                        },
                      ),
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
                          Navigator.push(context,MaterialPageRoute(builder: (context) => EditSmartRule()));
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