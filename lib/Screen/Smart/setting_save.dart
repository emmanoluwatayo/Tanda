import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/Smart/Goal_name.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/Smart/smart_settings.dart';
import 'package:tanda/Screen/linksuccess.dart';

class EducationSave extends StatefulWidget{
  @override
  EducationSaveState createState() => EducationSaveState();
}

class EducationSaveState extends State <EducationSave>{

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.greenColor,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child:  Image.asset("assets/icons/aeroplane.png"),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12), color: ColorConstant.lightGreyColor
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("EducationSave", style: setStyleContent(context,Colors.black,15,FontWeight.normal),),
                        Text("#2,050", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
                        Text("saved", style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                      ],
                    ),
                    Image.asset("assets/icons/noti.png", ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: 300,
                  height: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.primaryColor),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("10% saved", style: setStyleContent(context,Colors.black,12,FontWeight.normal)),
                    Text("of N40,000", style: setStyleContent(context,Colors.black,12,FontWeight.normal))
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reserve Funds", style: setStyleContent(context,Colors.white,18,FontWeight.bold),),
                          Text("1 active rules", style: setStyleContent(context,Colors.white,12,FontWeight.normal)),
                        ],
                      ),
                      Image.asset("assets/images/settins.png")
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: ColorConstant.black
                  ),
                ),
                SizedBox(height: 20,),
                Text("TOTAL ACTIVITIES", style: setStyleContent(context,Colors.black38,20,FontWeight.normal),),
                Container(
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
                                  Image.asset("assets/images/pluss.png"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Reserve Fund" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("8 activities" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                    ],
                                  ),
                                  Text("#2,050" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
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
                                      Text("Reserve Fund" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                                      Text("2 activities" , style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                                    ],
                                  ),
                                  Text("#2,050" , style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
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
                    width: ScreenUtil().setWidth(100.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        border: Border.all(color: ColorConstant.primaryColor)
                    ),
                    child: Center(
                      child: Text('Add Funds', style: setStyleContent(context,ColorConstant.primaryColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SmartSettings()));
                  },
                ),
                GestureDetector(
                  child:  Container(
                    width: ScreenUtil().setWidth(150.0),
                    height: ScreenUtil().setHeight(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      gradient: LinearGradient(
                          colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Center(
                      child: Text('Withdraw Funds', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    newcongratulations(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }

  newcongratulations(BuildContext context) async {
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
                        withdraw(context);
                      },
                    )
                  ],
                )
            ),
          );
        }
        );
  }

  withdraw(BuildContext context) async {
    String teamName = '';
    return showDialog(
      context: context,
      barrierDismissible: false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
            content: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/paydey.png"),
                  SizedBox(height: 10,),
                  Text("Enter the amount you want to withdraw \ninto your Tanda pay wallet", style:  setStyleContent(context,Colors.black,12,FontWeight.w300), textAlign: TextAlign.center,),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Enter Amount',
                        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                        hintText: '#0.00',
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
                          transactionsuccessful(context);
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
                            child: Text('Withdraw', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                            ),
                          ),
                        ),
                        onTap: (){
                          transactionsuccessful(context);
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

  transactionsuccessful(BuildContext context) async {
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
                    Text("Your transaction was successful" , style:  setStyleContent(context,Colors.black,12,FontWeight.w300),textAlign: TextAlign.center,),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => EducationSave()));
                      },
                    )
                  ],
                )
            ),
          );
        }
    );
  }
}