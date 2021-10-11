
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_link_method.dart';
import 'package:tanda/Screen/HomePage/link_method.dart';

class TandaHomePage extends StatefulWidget{
  @override
  TandaHomePageState createState() => TandaHomePageState();
}

class TandaHomePageState extends State <TandaHomePage>{
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
                  SizedBox(height: 20,),
                  Text("Choose Your Bank",  style: setStyleContent(context,Colors.black,25,FontWeight.bold),textAlign: TextAlign.center,),
                  Text("From the following options choose your bank", style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
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
                  SizedBox(height: 10,),
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 15,
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      GestureDetector(
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset("assets/images/firstbank.png",  fit: BoxFit.cover, height: 30,),
                            )),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => TandaLinkMethod()));
                        },
                      ),

                    ],
                  ),
                  SizedBox(height: 280,),
                  Center(
                    child: Text("can\'t find your bank? search for it", style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/icons/lock.png",),),
                      Text("Security by okra", style: setStyleContent(context,Colors.black,13,FontWeight.normal),),
                    ],
                  ),
                ]),
          ),
        ));
  }
}