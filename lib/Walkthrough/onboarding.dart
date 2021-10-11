import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/homepage.dart';


class OnBoardingPage extends StatefulWidget{
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State <OnBoardingPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Provider<OnBoardState>(
        create: (_) => OnBoardState(),
        child: Scaffold(
                    body: SafeArea(
                      child: OnBoard(
                        pageController: pageController,
                        onSkip: () {
                          // print('skipped');
                        },
                        onDone: () {
                          // print('done tapped');
                        },
                        onBoardData: onBoardData,
                        imageHeight: 100,
                        imageWidth: 250,
                        titleStyles: GoogleFonts.poppins( textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,),),
                        descriptionStyles: GoogleFonts.poppins( textStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.brown.shade900,),),
                        pageIndicatorStyle: const PageIndicatorStyle(
                          width: 100,
                          inactiveColor: Colors.grey,
                          activeColor: Color(0xFF564FFE),
                          inactiveSize: Size(8, 8),
                          activeSize: Size(12, 12),
                        ),
                        skipButton: TextButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Color(0xFF564FFE)),
                          ),
                        ),
                        nextButton: Consumer<OnBoardState>(
                            builder: (BuildContext context, OnBoardState state,
                                Widget? child) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage())),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(color:  ColorConstant.primaryColorTwo ),
                                          ),
                                        child: Text('Login', style: GoogleFonts.poppins(textStyle: TextStyle(
                                          color:  ColorConstant.primaryColorTwo, fontWeight: FontWeight.bold,), )),
                                      )
                                  ),
                                  GestureDetector(
                                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage())),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: ColorConstant.primaryColorTwo,),
                                        child: Text('Register', style:  GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),))),
                                      )
                                ],
                              );
                            }),
                      ),
                    )
        )
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInCirc,
      );
    } else {
      // print("done");
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "A NEW WAY TO MANAGE TOUR FINANCE",
    description: "Improve your financial life with a simple \n and complete app, without hidden cost",
    imgUrl: "assets/images/onboard_1.png",
  ),
  const OnBoardModel(
    title: "MAKE YOUR MONEY GROW",
    description:
    "Save and invest automatically with your \n rules, pay smart, analyse expenses \n and much more",
    imgUrl: 'assets/images/onboard_2.png',
  ),
  const OnBoardModel(
    title: "YOUR FUTURE IS SAFE",
    description:
    "Biometric identification, 3D secure and \n the best Open Banking technologies \n protect what matters",
    imgUrl: 'assets/images/onboard_3.png',
  ),
];