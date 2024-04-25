
import 'package:advflutter_ch1/screen/Stepper/views/Stepper_Screen.dart';
import 'package:advflutter_ch1/screen/Stepper/views/Stepper_Screen2.dart';
import 'package:advflutter_ch1/screen/home/views/Theme_change.dart';
import 'package:flutter/material.dart';

import 'screen/home/views/Switch_Theme-Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
      ,routes: {
      '/': (context)=>Stepper_Screen2(),
        '/Stepper': (context)=>Stepper_Screen(),
        '/theme': (context)=>theme_screen(),
      },
    );
  }
}

