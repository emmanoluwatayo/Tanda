import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';


class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  AppButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: ScreenUtil().setHeight(56.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29),
            gradient: LinearGradient(
                colors: [ColorConstant.primaryColor, ColorConstant.primaryColorTwo],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Text(text, style: setStyleContent(context,ColorConstant.slightWhiteColor, 15,FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
