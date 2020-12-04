import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_app/widgets/textField.dart';


import 'package:flutter/material.dart';

class SignupUP extends StatefulWidget {
  @override
  _SignupUPState createState() => _SignupUPState();
}

class _SignupUPState extends State<SignupUP> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(FlutterIcons.arrow_back_mdi, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: height*.1,),
            Padding(padding: EdgeInsets.only(left: 20),child:    Text("Create an Account.!", style: GoogleFonts.inter(
                fontSize: 45,
                fontWeight: FontWeight.w400
            ),
            ),),
            SizedBox(height: 50,),
            CustomInputs(isSecured: false,hint: "Firstname"),
            CustomInputs(isSecured: false,hint: "Lastname"),
            CustomInputs(isSecured: false,hint: "Email"),
            CustomInputs(isSecured: true,hint: "Password"),
            Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child:Material(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(3) ),
                  color: Colors.deepOrange.shade400,
                  elevation: 5,
                  child:MaterialButton(
                    height: 40,
                    color: Colors.deepOrange.shade400,
                    child: Text("Done",style: GoogleFonts.inter(fontSize: 18,textStyle: TextStyle(color: Colors.white)),),
                  ),))
          ],
        ),
      ),
    );
  }
}
