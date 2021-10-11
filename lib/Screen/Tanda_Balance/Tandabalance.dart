import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/Tanda_Balance/fund.dart';


class TandaBalance extends StatefulWidget{
  TandaBalanceState createState() => TandaBalanceState();
}

class TandaBalanceState extends State <TandaBalance>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      width: ScreenUtil().setWidth(340.0),
                      height: ScreenUtil().setHeight(250.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.slightWhiteColor, border: Border.all(color: ColorConstant.primaryColor)
                      ),
                    child: Column(
                      children: [
                        Image.asset("assets/icons/tandalogo.png",),
                        SizedBox(height: 12,),
                        Text("My Balance", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                        SizedBox(height: 12,),
                        Text("TANDA PAY WALLET", style: setStyleContent(context, ColorConstant.lightGreyColor, 15, FontWeight.normal),),
                        SizedBox(height: 12,),
                        Text("#20,000", style: setStyleContent(context, ColorConstant.black, 20, FontWeight.bold),),
                        SizedBox(height: 12,),
                        GestureDetector(
                          child:  Container(
                            height: 30,
                            width: 120,
                            child: Center(
                              child: Text("Top Up Wallet", style: setStyleContent(context, ColorConstant.slightWhiteColor, 12, FontWeight.bold),),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstant.primaryColor,
                            ),
                          ),
                          onTap: (){
                            showModalBottomSheet(
                                context: context,
                                builder: (context){
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 10,),
                                          Text("Add Money", style: setStyleContent(context, ColorConstant.black, 15, FontWeight.bold),),
                                          Text("How much do you want to add to\nTanda account", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.normal),textAlign: TextAlign.center,),
                                          SizedBox(height: 10,),
                                          Container(
                                              width: 290,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextField(
                                                    keyboardType: TextInputType.emailAddress,
                                                    autofocus: false,
                                                    decoration: InputDecoration(
                                                      labelText: '#0.00',
                                                      labelStyle:  setStyleContent(context,Colors.black,15,FontWeight.w300),
                                                      hintText: 'Enter here',
                                                      hintStyle: setStyleContent(context,Colors.black,15,FontWeight.w300),
                                                      hoverColor: Colors.deepPurpleAccent,
                                                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                                      border:
                                                      OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.deepPurpleAccent)),
                                                    ),
                                                  ),
                                                ],
                                              )
                                          ),
                                          Container(
                                              height:ScreenUtil().setHeight(50.0),
                                              margin: EdgeInsets.all(20),
                                              width: MediaQuery.of(context).size.width,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Icon(Icons.arrow_back_sharp,color: ColorConstant.freyColor,),
                                                  ),
                                                  GestureDetector(
                                                    child:  Container(
                                                      width: ScreenUtil().setWidth(250.0),
                                                      height: ScreenUtil().setHeight(300.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(29),
                                                        gradient: LinearGradient(
                                                            colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                                                            begin: Alignment.topCenter,
                                                            end: Alignment.bottomCenter),
                                                      ),
                                                      child: Center(
                                                        child: Text('Continue', style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
                                                        ),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      Navigator.push(context,MaterialPageRoute(builder: (context) => HowToFund()));
                                                    },
                                                  )
                                                ],
                                              )
                                          ),

                                        ],
                                      )
                                    ],
                                  );
                                }
                            );
                          },
                        )
                      ],
                    ),
                  ),


                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/semoney.png",),
                            Text("Send\nMoney", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/remmoney.png",),
                            Text("Recieve\nMoney", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/buyairtime.png",),
                            Text("Buy\nAirtime", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/cashwith.png",),
                            Text("Cash\nWithdrawal", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/tranhis.png",),
                            Text("Transaction\nHistory", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/paybill.png",),
                            Text("Pay\nBills", style: setStyleContent(context, ColorConstant.black, 12, FontWeight.bold), textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}