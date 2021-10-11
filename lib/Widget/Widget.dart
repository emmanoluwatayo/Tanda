import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final double height;
  final String topLabel;
  final bool obscureText;

  InputWidget({
    required this.hintText,
    this.height = 48.0,
    this.topLabel = "",
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: setStyleContent(context,Colors.black,18,FontWeight.w300),
        hintText: 'Enter here',
        hintStyle: setStyleContent(context,Colors.black, 15,FontWeight.w300),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: const BorderSide(color: Colors.black, width: 0.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0)),
      ),
    );
  }
}