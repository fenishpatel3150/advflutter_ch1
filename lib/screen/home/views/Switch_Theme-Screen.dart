import 'package:flutter/material.dart';

class switch_theme extends StatefulWidget {
  const switch_theme({super.key});

  @override
  State<switch_theme> createState() => _switch_themeState();
}

class _switch_themeState extends State<switch_theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Yo Man !',style: TextStyle(fontSize: 30),),
          Text("It's Simaple Example of ",style: TextStyle(fontSize: 13),),
          Text("Dark Theme",style: TextStyle(fontSize: 13),),
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Center(child: Text('Light Theme',style: TextStyle(fontSize: 25),)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Center(child: Text('Dark Theme',style: TextStyle(fontSize: 25),)),
          ),
        ],
      ),
    );
  }
}
