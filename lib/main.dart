
import 'package:advflutter_ch1/screen/Dark&WhiteThme/provider/Theme_Provider.dart';
import 'package:advflutter_ch1/screen/Dark&WhiteThme/view/Theme_Screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home/views/Switch_Theme-Screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Themeprovider(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        brightness: Brightness.light,
        colorScheme:
          ColorScheme.light(
            primary: Colors.orange,
                secondary: Colors.blue
          )
      ),
      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.light,
          colorScheme:
          ColorScheme.light(
              primary: Colors.orange,
                  secondary: Colors.green
          )
      ),
          themeMode: Provider.of<Themeprovider>(context,listen: true).dark ? ThemeMode.dark : ThemeMode.light,
          home: Theme_Screen(),
    );
  }
}

