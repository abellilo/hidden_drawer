import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hiddendrawer/pages/home_page.dart';
import 'package:hiddendrawer/pages/settings_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.black
  );

  final mySelectedStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            colorLineSelected: Colors.white,
              name: 'Homepage',
              baseStyle: myTextStyle,
              selectedStyle: mySelectedStyle),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: Colors.white,
              name: 'Settings',
              baseStyle: myTextStyle,
              selectedStyle: mySelectedStyle),
          SettingPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade200,
      initPositionSelected: 0,
      slidePercent: 50,
    );
  }
}
