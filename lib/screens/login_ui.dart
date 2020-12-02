import 'dart:ui';
import 'package:blog_app/constants/colors.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_app/widgets/textField.dart';


import 'package:flutter/material.dart';
class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: height*.3,),
            Padding(padding: EdgeInsets.only(left: 20),child:    Text("Welcome.!", style: GoogleFonts.inter(
                fontSize: 45,
                fontWeight: FontWeight.w400
            ),
            ),),

            SizedBox(height: 50,),
                   CustomInputs(isSecured: false,hint: "Username"),
                  CustomInputs(isSecured: true,hint: "Password"),
                  Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child:Material(
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(3) ),
                        color: Colors.deepOrange.shade400,
                      elevation: 10,
                      child:MaterialButton(
                      height: 40,
                      color: Colors.deepOrange.shade400,
                      child: Text("Login",style: GoogleFonts.inter(fontSize: 18,textStyle: TextStyle(color: Colors.white)),),
                    ),))
          ],
        ),
      ),
    );
  }
}
