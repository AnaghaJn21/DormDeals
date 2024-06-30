import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: ,
        // color: ,
        index: _page,
        animationDuration: Duration(milliseconds: 300),
        key: _bottomNavigationKey,
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.shopping_bag_outlined,
                // color: ,
              ),
              label: "Buy"),
          CurvedNavigationBarItem(child: Icon(Icons.home), label: "Home"),
          CurvedNavigationBarItem(
              child: Icon(Icons.add_circle_outline_outlined), label: "Sell"),
          CurvedNavigationBarItem(child: Icon(Icons.person), label: "Profile"),
          CurvedNavigationBarItem(
              child: Icon(Icons.settings), label: "Settings")
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
