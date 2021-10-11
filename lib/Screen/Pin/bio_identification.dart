import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';

class  BiometricIdentification extends StatefulWidget{
  @override
  BiometricIdentificationState createState() =>  BiometricIdentificationState();
}

class  BiometricIdentificationState extends State <BiometricIdentification>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 80,),
                    ImageIcon(AssetImage("assets/icons/scan.png",), size: 200, color: Colors.deepPurple.shade900,),
                    SizedBox(height: 120,),
                    Text("WANT TO ENABLE BIOMETRIC \n IDENTIFICATION", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),  textAlign: TextAlign.center),
                    SizedBox(height: 10,),
                    Text("Biometric Identification, 3D secure and \n the best Open Banking technologies \n protect what matters", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400)),  textAlign: TextAlign.center),
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage())),
                            child: Container(
                              width: 100,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade300,
                                border: Border.all(color:  Colors.deepPurple.shade900 ),
                              ),
                              child: Text('Not Now', style: GoogleFonts.poppins(textStyle: TextStyle(
                                color:  Colors.deepPurple.shade900, fontWeight: FontWeight.bold,), )),
                            )
                        ),
                        InkWell(
                          onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage())),
                          child: Container(
                              width: 150,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.deepPurple.shade900,),
                              child: Text('Activate', style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),))),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}