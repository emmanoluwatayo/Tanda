import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_email.dart';
import 'package:tanda/Signup/verify_phone_number.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class TandaPhoneNumber extends StatefulWidget{
  @override
  _TandaPhoneNumberState createState() => _TandaPhoneNumberState();
}

class _TandaPhoneNumberState extends State <TandaPhoneNumber>{
  GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

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
                SizedBox(height:  20.0,),
                Text('Phone Number', style: setStyleContent(context,Colors.black,18,FontWeight.bold),),
                SizedBox(height:ScreenUtil().setHeight(4.0)),
                Text("Let's start with your phone number, you will need this to access your account",  style: setStyleContent(context,Colors.black,12,FontWeight.normal)),
                SizedBox(height:ScreenUtil().setHeight(75.0)),
                Form(
                  key: _formKey,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                      hintText: 'Enter here phone number',
                      hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.w300),
                      prefixIcon: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset('assets/images/nigeria.png',height: 20,width: 20,),),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                      ),
                    ),
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
                      child: Text('Confirm Changes', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaEmail()));
                  },
                )
              ],
            )
        ),
      ),
    );
  }

}