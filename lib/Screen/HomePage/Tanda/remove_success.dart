import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class   CardRemoveSuccess extends StatefulWidget{
  @override
   CardRemoveSuccessState createState() =>   CardRemoveSuccessState();
}

class   CardRemoveSuccessState extends State < CardRemoveSuccess> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 250,
            margin: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("assets/icons/success.png",  ), color: Colors.deepPurple.shade900,  size: 80,),
                SizedBox(height: 10,),
                Text("Card Removed" , style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,),),),
                SizedBox(height: 10,),
                Text("successfully", style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,),),),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                      width: 210,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurple.shade900,),
                      child: Text('ok', style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)
                      )
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),  color: Colors.grey.shade200,
            ),
          ),
        ),
      ),
    );
  }
}