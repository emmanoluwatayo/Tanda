import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanda/Config/Color.dart';
import 'package:tanda/Config/Style.dart';
import 'package:tanda/Screen/link_bank.dart';
import 'package:tanda/Signup/verify_email.dart';
import 'package:tanda/Widget/ButtonWidget.dart';

class KnowYourself extends StatefulWidget{
  @override
  KnowYourselfState createState() => KnowYourselfState();
}

class KnowYourselfState extends State <KnowYourself>{
  String? selectedDate;
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
              SizedBox(height:  20.0,),
              Text('Kindly Know Yourself', style: setStyleContent(context,Colors.black,20,FontWeight.bold)),
              Text('Please set a password for ur account',   style: setStyleContent(context,Colors.black,12,FontWeight.normal)),
              SizedBox(height:  80.0,),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hoverColor: Colors.deepPurpleAccent,
                  labelText: 'First Name',
                  labelStyle:   setStyleContent(context,Colors.black,18,FontWeight.normal),
                  hintText: 'Enter here',
                  hintStyle: setStyleContent(context,Colors.black,10,FontWeight.normal),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hoverColor: Colors.deepPurpleAccent,
                  labelText: 'Surname',
                  labelStyle:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300)),
                  hintText: 'Enter here',
                  hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w300)),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: const BorderSide(color: Colors.black, width: 0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(color: ColorConstant.primaryColor, width: 1.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DateTimePicker(
                  initialValue: '', // initialValue or controller.text can be null, empty or a DateTime string otherwise it will throw an error.
                  type: DateTimePickerType.date,
                  dateLabelText: 'Select Date',
                  firstDate: DateTime(1995),
                  lastDate: DateTime.now()
                      .add(Duration(days: 365)), // This will add one year from current date
                  validator: (value) {
                    return null;
                  },
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        selectedDate = value;
                      });
                    }
                  },
                  // We can also use onSave
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Your Selected Date: $selectedDate',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50,),
              AppButton(text: 'Next', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => BankLinking()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}