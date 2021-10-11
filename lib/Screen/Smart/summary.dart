import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/Summary_confirm.dart';

class Summary extends StatefulWidget{
  SummaryState createState() => SummaryState();
}

class SummaryState extends State <Summary>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Summary", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                Text("Checked the data previously entered and\nproceed with order", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                    Text("Fixed Rate", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Issuer", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                    Text("SmartENT", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Invested Amount", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                    Text("#1000", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
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
                      child: Text('Confirm Order', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SummaryConfirm()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }
}