import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wh_app/create_story.dart';
import 'package:wh_app/homeactivity.dart';
import 'package:wh_app/login.dart';
import 'package:wh_app/marketplace.dart';
import 'package:wh_app/mystory.dart';
import 'package:wh_app/profile.dart';
import 'package:wh_app/sell_story.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _home();
  }
}

class _home extends State<home>{
  int _currentIndex = 0;
  List<Widget> tabs = [
  homeactivity(),
  create_story(),
  mystory(),
  marketplace(),
  profile(),
  ];

  onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: _buildBlurEffect(),
       body:tabs[_currentIndex],
     );
  }

  Widget _buildBlurEffect() {
    return BottomNavigationBar(
      onTap: onTapped,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xffECAE0F),
      unselectedItemColor: Colors.black,// Fixed
      backgroundColor: Colors.white,
      items:  [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            // color: Colors.white,
            size: 30,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              'assets/sale.svg',
            width: 30,
            color: _currentIndex == 1 ? Color(0xffECAE0F) : Colors.black,
              ),
          label: "Sell Story",
        ),
        BottomNavigationBarItem(
          icon: Icon(
             Icons.people,          // color: Colors.white,
            size: 30,
          ),
          label: "My Story",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/market.svg',
            width: 30,
            color: _currentIndex == 3 ? Color(0xffECAE0F) : Colors.black,
          ),

          label: "Market Place",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/setting.svg',
            width: 30,
            color: _currentIndex == 4 ? Color(0xffECAE0F) : Colors.black,

          ),
          label: "Account",
        )
      ],
    );
  }

}