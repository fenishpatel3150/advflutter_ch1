import 'package:advflutter_ch1/screen/home/views/Switch_Theme-Screen.dart';
import 'package:flutter/material.dart';

class theme_screen extends StatelessWidget {
  const theme_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.blue
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.red
      ),
      home: switch_theme(),
    );
  }
}
