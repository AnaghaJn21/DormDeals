import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:dormdeals/buy_details.dart';
import 'package:dormdeals/constants/Colors.dart';
import 'package:dormdeals/pages/Buy_Main_Pg.dart';
import 'package:dormdeals/pages/Login_Pg.dart';
import 'package:dormdeals/pages/Profile_Pg.dart';
import 'package:dormdeals/pages/Settings_Pg.dart';
import 'package:dormdeals/pages/sell_details.dart';
import 'package:flutter/material.dart';

class LandingPg extends StatefulWidget {
  LandingPg({super.key});

  @override
  State<LandingPg> createState() => _LandingPgState();
}

class _LandingPgState extends State<LandingPg> {
  int _page = 2;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    BuyDetails(),
    SellDetails(),
    null,
    ProfilePg(),
    SettingsPg()
  ];

  //   @override
  // void initState() {
  //   super.initState();
  //   // Set the home content dynamically after initialization
  //   screens[2] = _buildHomeContent();
  // }
  // Widget _buildHomeContent() {
  //   return Column(
  //     children: <Widget>[
  //       IconButton(
  //         alignment: Alignment.topLeft,
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //         icon: Icon(Icons.arrow_back),
  //       ),
  //       Text(
  //         "HOME PAGE",
  //         style: TextStyle(fontSize: 100, color: TEXT_COLOR_W),
  //       ),
  //     ],
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      backgroundColor: DARK_BLUE_COLOR,
      bottomNavigationBar: CurvedNavigationBar(
        color: LIGHT_BLUE_COLOR,
        // buttonBackgroundColor: MORE_LIGHT_BLUE_COLOR,
        backgroundColor: Colors.transparent,
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
                Icons.add_circle_outline_outlined,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Sell"),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: TEXT_COLOR_W,
              ),
              labelStyle: TextStyle(color: TEXT_COLOR_W),
              label: "Home"),
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
      body: screens[_page],
    ));
  }
}
