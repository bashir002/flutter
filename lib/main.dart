// ignore_for_file: prefer_const_constructors
import 'package:my_new_project/screen/bmi_screen.dart';

import 'package:flutter/material.dart';

import 'screen/intro_screen.dart';


void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const  GlobeApp({Key? key}) : super(key: key);

 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        routes: {
          
          '/': (context) => IntroScreen(),
          '/bmi': (context) => BmiScreen(),
        },
        initialRoute: '/',
    );
  }
  }

  