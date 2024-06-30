import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:flutter/material.dart';

class LandingPg extends StatefulWidget {
  LandingPg({super.key});

  @override
  State<LandingPg> createState() => _LandingPgState();
}

class _LandingPgState extends State<LandingPg> {
  int _page = 2;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: DARK_BLUE_COLOR,
      bottomNavigationBar: CurvedNavigationBar(
        color: LIGHT_BLUE_COLOR,
        backgroundColor: DARK_BLUE_COLOR,
        index: _page,
        animationDuration: Duration(milliseconds: 300),
        key: _bottomNavigationKey,
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.shopping_bag_outlined,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Buy"),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Home"),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.add_circle_outline_outlined,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Sell"),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.person,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Profile"),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.settings,
                color: TEXT_COLOR_W,
              ),
              label: "Settings",
              labelStyle: TextStyle(color: TEXT_COLOR_W))
        ],
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
      ),
      body: Container(),
    ));
  }
}
