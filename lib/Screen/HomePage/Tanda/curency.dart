import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  Currency extends StatefulWidget{
  @override
  CurrencyState createState() =>  CurrencyState();
}

class  CurrencyState extends State <Currency> with SingleTickerProviderStateMixin {
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
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           SizedBox(height: 15,),
         Text("CURRENCY", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),),
         SizedBox(height: 25,),
         Container(
           height: 50,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 margin: EdgeInsets.all(8),
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("N  NGN" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,),)),
                     Text("Nigeria" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300,),)),
                   ],
                 ),
               ),
             ],
           ),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),  color: Colors.grey.shade200,
           ),
         ),
         ]
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