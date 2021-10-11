import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/airtime_code.dart';
import 'package:tanda/Screen/Airtime/history.dart';
import 'package:tanda/Screen/Tanda_Balance/request_page.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class BuyAirtel extends StatefulWidget{
  @override
  BuyAirtelState createState() => BuyAirtelState();
}

class BuyAirtelState extends State <BuyAirtel>{
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
                  child: Image.asset("assets/images/airtel.png",  fit: BoxFit.fill, height: 300, width: 390,),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding:  EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text("Select a package",style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal), ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400)),
                              hintText: "#0.000",
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp)),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Phone Number", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400)),
                              hintText: "+2355555",
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Amount",style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal), ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400)),
                              hintText: "#0.000",
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Fee #50.",style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal), ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400)),
                              hintText: "#0.000",
                              fillColor: Colors.white),
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
                      child: Text('Buy Airtime', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    airtelpincode(context);
                  },
                )
              ],
            )
        ),
      ),
    );
  }
  airtelpincode(BuildContext context) async {
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
                    Image.asset("assets/images/smile.png"),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HistoryAirtel()));
                      },
                    )
                  ],
                )
            ),);});}
}