import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';

class  ScanBiometric extends StatefulWidget{
  @override
  ScanBiometricState createState() =>  ScanBiometricState();
}

class  ScanBiometricState extends State <ScanBiometric>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("Scan Your Fingerprint", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)), ),
                    Text("Place your finger on the scan", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400)), ),
                    SizedBox(height: 45,),
                    Center(
                      child: ImageIcon(AssetImage("assets/icons/finger.png",), size: 180, color: Colors.grey.shade400, ),
                    ),
                    SizedBox(height: 280,),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(
                          child:Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text('Next', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400)),),
                              )
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Colors.deepPurple.shade900
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageChoose()));
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            )
        )
    );
  }
}