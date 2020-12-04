import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/images/home_img.png';
    return Column(
      children: [
        Container(
          height: 200,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:DecorationImage(
                  image: AssetImage(assetName),
                  fit: BoxFit.cover
              )
          ),
        ),
        Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("How To Manage Your Home Effectively",style: GoogleFonts.montserrat( fontSize: 23,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: [
                RichText(text: TextSpan(
                    children: [
                      WidgetSpan(child: Icon(FlutterIcons.clock_ent,size: 13,color: Colors.black,)),
                      TextSpan(text: " 50m ago",style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black))
                    ]
                )),
                SizedBox(width: 10,),
                RichText(text: TextSpan(
                    children: [
                      WidgetSpan(child: Icon(FlutterIcons.message_circle_fea,size: 13,color: Colors.black,)),

                      TextSpan(text: " 50 Comments",style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black))
                    ]
                )),


              ],

            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                Text("Show all",style: GoogleFonts.montserrat(color: Colors.deepOrange.shade400,fontSize: 16,fontWeight: FontWeight.w600),)
              ],
            )
          ],
        ),
    )
      ],
    );
  }
}
