import 'package:blog_app/widgets/top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/images/user_avatar.svg';
    final Widget svg = SvgPicture.asset(
        assetName,
        semanticsLabel: 'User Avatar',
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: SizedBox(
            height: 7,
            width: 7,
            child: svg,
          ),
        ),
        actions: [
          new IconButton(icon: new Icon(FlutterIcons.more_horiz_mdi,color: Colors.black,size: 30,), onPressed: null)
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            TopWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepOrange.shade400,
        iconSize: 20,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(FlutterIcons.home_ant,color: Colors.black,),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(FlutterIcons.md_heart_empty_ion,color: Colors.black),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(FlutterIcons.search_oct,color: Colors.black),
              title: Text('Profile')
          ),
          BottomNavigationBarItem(
              icon: Icon(FlutterIcons.bell_ent,color: Colors.black),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}
