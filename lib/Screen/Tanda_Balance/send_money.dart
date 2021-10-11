import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/sendpage.dart';

class SendMoney extends StatefulWidget{
  @override
  SendMoneyState createState() => SendMoneyState();
}

class SendMoneyState extends State <SendMoney>{
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
                Text("SEND MONEY", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              debugPrint('222');
                            }),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(25.0),
                          ),
                        ),
                        filled: true,
                        hintStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400)),
                        hintText: "Search product here...",
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),
                Text("ALL CONTACT" , style: setStyleContent(context, ColorConstant.black, 18, FontWeight.normal),),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
                ),
                Divider(thickness: 2.0,),
                GestureDetector(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/images/dice.png",  fit: BoxFit.fill, height: 50,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Isaac", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                          Text("+235555555", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("assets/images/nigeria.png",  fit: BoxFit.fill, height: 50,),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SendPage()));
                  },
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
              ],
            )
        ),
      ),
    );
  }
}