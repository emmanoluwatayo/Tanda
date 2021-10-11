import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Credential/credentials_login.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Screen/linksuccess.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class  LinkMethod extends StatefulWidget{
  @override
  LinkMethodtate createState() =>  LinkMethodtate();
}

class  LinkMethodtate extends State <LinkMethod>{
  bool switchControl = false;
  var textHolder = 'Switch is OFF';
  void toggleSwitch(bool value) {

    if(switchControl == false)
    {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else
    {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }
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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset("assets/images/firstbank.png",  fit: BoxFit.cover, height: 80,),
              ),
              Text("Select A Link Method \n To Continue", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),  textAlign: TextAlign.center),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Link with Web credentials',style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('The username & password for \n FirstBank web portal',style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                        Transform.scale(
                            scale: 1,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: switchControl,
                              activeColor: Colors.deepPurple.shade900,
                              activeTrackColor: Colors.white,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            )
                        ),
                      ],
                    ),

                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade300),
                padding: EdgeInsets.all(15),
              ),
              SizedBox(height: 10,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Link with Mobile App credentials',style: setStyleContent(context,Colors.black,15,FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('The username & password for \n FirstBank/FirstBank App', style: setStyleContent(context,Colors.black,12,FontWeight.normal),),
                        Transform.scale(
                            scale: 1,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: switchControl,
                              activeColor: Colors.deepPurple.shade900,
                              activeTrackColor: Colors.white,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            )
                        ),
                      ],
                    ),

                  ],
                ),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade300),
                padding: EdgeInsets.all(15),
              ),
              SizedBox(height: 50,),
              AppButton(text: 'Next', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => LoginCredentials()));
              }),
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/lock.png",),),
                  Text("Security by okra", style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}