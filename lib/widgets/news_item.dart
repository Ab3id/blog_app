import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';


class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/images/ll.jpeg';
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image:DecorationImage(
                    image: AssetImage(assetName),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.deepPurple
                    ),
                    child:  Text("Design",style: GoogleFonts.montserrat(color: Colors.white, ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Expanded(child: Padding(padding: EdgeInsets.all(5),child: Text("Loraeim ipsum testing widget",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w500),),))
              ],),
              Row(
                children: [
                  RichText(text: TextSpan(
                      children: [
                        WidgetSpan(child: Icon(FlutterIcons.clock_ent,size: 12,color: Colors.black26,)),
                        TextSpan(text: " 50m ago",style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black26))
                      ]
                  )),
                  SizedBox(width: 10,),
                  RichText(text: TextSpan(
                      children: [
                        WidgetSpan(child: Icon(FlutterIcons.message_circle_fea,size: 12,color: Colors.black26,)),

                        TextSpan(text: " 50 Comments",style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black26))
                      ]
                  )),


                ],

              ),
            ],
          )
              ),

        ],
      ),
    );
  }
}
