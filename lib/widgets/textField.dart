import 'package:flutter/material.dart';

class CustomInputs extends StatelessWidget {
  bool isSecured;
  String hint;

  CustomInputs({
    this.isSecured,
    this.hint
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: TextField(
        obscureText: this.isSecured,
        decoration: InputDecoration(
          hintText: this.hint,
          filled: true,
          fillColor: Colors.black12,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.transparent
            )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.transparent
              )
          ),
     
        ),
      ),
    );
  }
}
