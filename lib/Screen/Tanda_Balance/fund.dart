import 'package:flutter/material.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/Tanda_withussd.dart';
import 'package:tanda/Screen/Tanda_Balance/tanda_card_select.dart';

class HowToFund extends StatefulWidget{
  HowToFundState createState() => HowToFundState();
}

class HowToFundState extends State <HowToFund>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 180,),
                Text("How would you like", style: setStyleContent(context, ColorConstant.black, 25, FontWeight.bold),),
                GestureDetector(
                  child: Text("To Fund?", style: setStyleContent(context, ColorConstant.primaryColor, 25, FontWeight.bold),),
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context){
                          return Container(
                            padding: EdgeInsets.all(18),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Pay with Card", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.normal),),
                                      ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                                    ],
                                  ),
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => TandaSelectCard()));
                                  },
                                ),
                                Divider(thickness: 2.0,),
                                GestureDetector(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Pay with USSD", style: setStyleContent(context, ColorConstant.black, 18, FontWeight.normal),),
                                      ImageIcon(AssetImage("assets/icons/bluearrow.png"),size: 20, color: ColorConstant.primaryColor,),
                                    ],
                                  ),
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => PayWithUSSD()));
                                  },
                                )
                              ],
                            )
                          );
                        }
                    );
                  },
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}