import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Screen/Airtime/buy_airtime.dart';
import 'package:tanda/Screen/Coach/Tanda_coach.dart';
import 'package:tanda/Screen/Coach/Tanda_coach22.dart';
import 'package:tanda/Screen/Coach/complete_take_break.dart';
import 'package:tanda/Screen/Coach/congte.dart';
import 'package:tanda/Screen/Coach/dreambig.dart';
import 'package:tanda/Screen/Coach/firsttransfer.dart';
import 'package:tanda/Screen/Coach/socialmedia.dart';
import 'package:tanda/Screen/Coach/sweatitout.dart';
import 'package:tanda/Screen/Coach/sweatitout_complete.dart';
import 'package:tanda/Screen/Coach/tanda_gain.dart';
import 'package:tanda/Screen/HomePage/Tanda/remove_card.dart';
import 'package:tanda/Screen/HomePage/Tanda/statistics.dart';
import 'package:tanda/Screen/Smart/Activities.dart';
import 'package:tanda/Screen/Smart/invest.dart';
import 'package:tanda/Screen/Smart/invest_opportunities.dart';
import 'package:tanda/Screen/Smart/reserved%20fund.dart';
import 'package:tanda/Screen/Smart/save.dart';
import 'package:tanda/Screen/Smart/setting_goal.dart';
import 'package:tanda/Screen/Smart/smart_rule.dart';
import 'package:tanda/Screen/Smart/smart_set_and_forget.dart';
import 'package:tanda/Screen/Smart/smart_settings.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/Walkthrough/onboarding.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Color(0xFF564FFE),
      systemNavigationBarDividerColor: Color(0xFF564FFE),
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tanda",
        theme: ThemeData(
          scaffoldBackgroundColor: ColorConstant.slightWhiteColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: "/",
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return OnBoardingPage();
      });
    case "/onBoarding":
      return MaterialPageRoute(builder: (BuildContext context) {
        return OnBoardingPage();
      });
    case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      });
    case "/signUp":
      return MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      });
  }
}