import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/tanda_account_number.dart';

class SelectBank extends StatefulWidget{
  @override
  SelectBankState createState() => SelectBankState();
}
class SelectBankState extends State <SelectBank>{
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
                Text("SELECT A BANK", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
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
                GestureDetector(
                  child:  Text("Palmsland Consult", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AccountNumber()));
                  },
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                GestureDetector(
                  child:  Text("City Bank", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                GestureDetector(
                  child:  Text("Bank of Nigeria", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                Divider(thickness: 2,),
                GestureDetector(
                  child:  Text("Access Money", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold),),
                  onTap: (){

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