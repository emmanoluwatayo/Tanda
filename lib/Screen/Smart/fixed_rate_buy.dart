import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Smart/fixed_rate_card.dart';

class   FixedRateBuy extends StatefulWidget{
  @override
    FixedRateBuyState createState() =>   FixedRateBuyState();
}

class   FixedRateBuyState extends State <  FixedRateBuy>{

  String text = '';

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
        child: Center(child: Text(text[position], style: TextStyle(color: Colors.black),)),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18,),
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("BUY", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.normal),),
                          Text("Fixed Rate", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                        ]
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/images/leaf.png",  fit: BoxFit.fill, height: 100,),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: 'Amount',
                          labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                          hintText: '#1000',
                          hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.w300),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hoverColor: Colors.deepPurpleAccent,
                          labelText: 'Invest via',
                          labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
                          hintText: 'TandaPay ',
                          hintStyle: setStyleContent(context,Colors.black,15,FontWeight.w300),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(Icons.arrow_drop_down,color: ColorConstant.black,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  constraints: const BoxConstraints(
                      maxWidth: 500
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      otpNumberWidget(0),
                      otpNumberWidget(1),
                      otpNumberWidget(2),
                      otpNumberWidget(3),
                      otpNumberWidget(4),
                      otpNumberWidget(5),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    height:ScreenUtil().setHeight(50.0),
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
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
                              child: Text('Continue', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => FixedRateCard()));
                          },
                        )
                      ],
                    )
                ),
                NumericKeyboard(
                  onKeyboardTap: _onKeyboardTap,
                  textColor: ColorConstant.black,
                  rightIcon: Icon(
                    Icons.backspace,
                    color: ColorConstant.black,
                  ),
                  rightButtonFn: () {
                    setState(() {
                      text = text.substring(0, text.length - 1);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}