import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/linksuccess.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class BankLinking extends StatefulWidget{
  @override
  BankLinkingState createState() => BankLinkingState();
}

class BankLinkingState extends State <BankLinking>{
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Image.asset("assets/images/banklink.png", height: 300,),
              SizedBox(height: 50,),
              Text("Hello, Ayodeji", style: setStyleContent(context,Colors.black,20,FontWeight.bold),),
              SizedBox(height: 10,),
              Text("To enjoy our AI powered savings, investments, \n deposits, and withdrawals, securely link your \n bank to your Tanda Account. We use \n bank-level security, data \n encryption and more",
                style: setStyleContent(context,Colors.black,13,FontWeight.normal),textAlign: TextAlign.center,),
              SizedBox(height: 50,),
              AppButton(text: 'Next', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => BankLinkingSuccessful()));
              }),
            ],
          ),
        ),
      )
    );
  }
}