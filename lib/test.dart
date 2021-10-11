import 'package:flutter/material.dart';
import 'package:tanda/Screen/HomePage/Credential/credentials_login.dart';
import 'package:tanda/Screen/HomePage/Tanda/account.dart';
import 'package:tanda/Screen/HomePage/Tanda/add_new_card.dart';
import 'package:tanda/Screen/HomePage/Tanda/all_about_you.dart';
import 'package:tanda/Screen/HomePage/Tanda/card_manage.dart';
import 'package:tanda/Screen/HomePage/Tanda/connected_inst.dart';
import 'package:tanda/Screen/HomePage/Tanda/curency.dart';
import 'package:tanda/Screen/HomePage/Tanda/help_center.dart';
import 'package:tanda/Screen/HomePage/Tanda/manage_card.dart';
import 'package:tanda/Screen/HomePage/Tanda/remove_card.dart';
import 'package:tanda/Screen/HomePage/Tanda/remove_success.dart';
import 'package:tanda/Screen/HomePage/Tanda/reward.dart';
import 'package:tanda/Screen/HomePage/Tanda/reward_share.dart';
import 'package:tanda/Screen/HomePage/Tanda/statistics.dart';
import 'package:tanda/Screen/HomePage/Tanda/support.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_email.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_homepage.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_phonenumber.dart';
import 'package:tanda/Screen/HomePage/Tanda/tanda_success.dart';
import 'package:tanda/Screen/HomePage/Tanda/track_refferal.dart';
import 'package:tanda/Screen/HomePage/Tanda/transfer_limit.dart';
import 'package:tanda/Screen/HomePage/Tanda/update_password.dart';
import 'package:tanda/Screen/HomePage/credentials_success.dart';
import 'package:tanda/Screen/HomePage/homepage.dart';
import 'package:tanda/Screen/HomePage/link_method.dart';
import 'package:tanda/Screen/Pin/Progressive.dart';
import 'package:tanda/Screen/Pin/bio_identification.dart';
import 'package:tanda/Screen/Pin/bio_successful.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Screen/linksuccess.dart';
import 'package:tanda/Signup/Email.dart';
import 'package:tanda/Signup/create_password.dart';
import 'package:tanda/Signup/login.dart';
import 'package:tanda/Signup/password_recover.dart';
import 'package:tanda/Signup/phone_number.dart';
import 'package:tanda/Walkthrough/onboarding.dart';
import 'package:tanda/Walkthrough/screensplash.dart';
import 'package:tanda/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenSplash(),
    );
  }
}



