

import 'package:advflutter_ch1/screen/Dark&WhiteThme/provider/Theme_Provider.dart';
import 'package:advflutter_ch1/screen/contact/view/contact_Screen.dart';
import 'package:advflutter_ch1/screen/counter/provider/Counter_Provider.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/gallery_screen.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/provider/intro_provider.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/view/intro_1.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/view/intro_4.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
   runApp(
     MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Introprovider(),),
    ChangeNotifierProvider(create: (context) => counterprovider(),),
    ChangeNotifierProvider(create: (context) => Themeprovider(),),
  ],
  child: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light().copyWith(
      //     brightness: Brightness.light,
      //     colorScheme: ColorScheme.light(
      //         primary: Colors.orange, secondary: Colors.blue)),
      // darkTheme: ThemeData.dark().copyWith(
      //     brightness: Brightness.light,
      //     colorScheme: ColorScheme.light(
      //         primary: Colors.orange, secondary: Colors.green)),
      //themeMode: Provider.of<Themeprovider>(context,listen: true).dark ? ThemeMode.dark : ThemeMode.light,
       //Provider.of<Introprovider>(context).click?intro_Screen4():Intro_Screen(),
      home: Gallery_Screen()
    );
  }
}
