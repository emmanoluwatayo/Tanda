import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class  BankLinkingSuccessful extends StatefulWidget{
  @override
   BankLinkingSuccessfultate createState() =>  BankLinkingSuccessfultate();
}

class  BankLinkingSuccessfultate extends State <BankLinkingSuccessful>{
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
              ImageIcon(AssetImage("assets/icons/success.png",), size: 200, color:  ColorConstant.primaryColor,),
              Text("TANDA USES OKRA TO \n LINK YOUR BANK", style: setStyleContent(context,Colors.black,20,FontWeight.bold), textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("assets/icons/key.png",), color: ColorConstant.primaryColor, ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text('Your bank information is encrypted \nfor end-to-end security'),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        ImageIcon(AssetImage("assets/icons/keyphone.png",), color: ColorConstant.primaryColor, ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text('Your credentials are not collected \nby or visible to Tanda'),)
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade300),
                padding: EdgeInsets.all(15),
              ),
              SizedBox(height: 50,),
              AppButton(text: 'Next', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageChoose()));
              }),
              SizedBox(height: 10,),
              Text("By clicking continue you agree to okra\'s ", style: setStyleContent(context,Colors.black,12,FontWeight.normal), textAlign: TextAlign.center,),
              GestureDetector(
                child: Text("End User Agreement", style: setStyleContent(context,ColorConstant.primaryColor,14,FontWeight.bold), textAlign: TextAlign.center,),
                onTap: (){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}