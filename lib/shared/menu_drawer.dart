// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import '../screen/bmi_screen.dart';
import '../screen/intro_screen.dart';
import '../screen/weather_screen.dart';
import '../screen/login_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context)
      )
    );
  }
  List<Widget> buildMenuItems(BuildContext context){
    final List<String> menuTitles = [
      'Home',
      'BMI Calculator',
      'Weather',
      'Training',
      'Login'

    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text('Globo Fitness', 
      style: TextStyle(color: Colors.white, fontSize: 28))));
  menuTitles.forEach((String element) {
    Widget screen = Container();
    menuItems.add(ListTile(
title: Text(element,
style: TextStyle(fontSize: 18)),
onTap: () {
  switch (element) {
    case 'Home':
      screen = IntroScreen();
      break;
    case 'BMI Calculator':
      screen = BmiScreen();
      break;

      case 'Weather':
      screen = WeatherScreen();
      break;

      // case 'Login':
      // screen = LoginScreen();
      // break;

  }
  items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
           ),
           BottomNavigationBarItem(
          icon: Icon(Icons.monitor_weight),
          label: 'Bmi',
           ),
      ];
  Navigator.of(context).pop();
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen));
  
}));
  });
  return menuItems;
  }
}