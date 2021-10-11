import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Credential/createpin.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Screen/linksuccess.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class  CredentialsSuccessful extends StatefulWidget{
  @override
  CredentialsSuccessfulState createState() =>  CredentialsSuccessfulState();
}

class  CredentialsSuccessfulState extends State <CredentialsSuccessful>{
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
             SizedBox(height: 80,),
             ImageIcon(AssetImage("assets/icons/success.png",), size: 200, color: ColorConstant.primaryColor ,),
             Text("BANK SUCCESSFULLY \n CONNECTED", style: setStyleContent(context,Colors.black,20,FontWeight.bold),textAlign: TextAlign.center,),
             SizedBox(height: 120,),
             AppButton(text: 'Next', onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context) => CreatePin()));
             }),
             SizedBox(height: 10,),
             GestureDetector(
               child: Text("End User Agreement", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w600)),  textAlign: TextAlign.center),
               onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => HomePageChoose()));
               },
             ),
             SizedBox(height: 58,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ImageIcon(AssetImage("assets/icons/lock.png",),),
                 Text("Security by okra")
               ],
             )
           ],
         ),
         ),
       ),
     );
  }
}