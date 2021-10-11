import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Airtime/airtime_code.dart';
import 'package:tanda/Screen/Tanda_Balance/request_page.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class BuyAirtime extends StatefulWidget{
  @override
  BuyAirtimeState createState() => BuyAirtimeState();
}

class BuyAirtimeState extends State <BuyAirtime>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding:  EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BUY AIRTIME", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Phone Number", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                    Container(
                      height: 100,
                        child:   ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "assets/images/9mobile.png",
                                      fit: BoxFit.fill, height: 100,),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "assets/images/airtel.png",
                                      fit: BoxFit.fill, height: 100,),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "assets/images/9mobile.png",
                                      fit: BoxFit.fill, height: 100,),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      "assets/images/airtel.png",
                                      fit: BoxFit.fill, height: 100,),
                                  ),
                                ],
                              ),
                            );
                          }
                )),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Phone Number", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                    GestureDetector(
                      child: Text("From Contact",style: setStyleContent(context, ColorConstant.primaryColor, 12, FontWeight.normal),),
                    )
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AirtimePinCode()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}