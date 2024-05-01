

import 'package:advflutter_ch1/screen/contact/view/commponets/callcontact.dart';
import 'package:advflutter_ch1/screen/contact/view/commponets/contactlist.dart';
import 'package:advflutter_ch1/screen/contact/view/commponets/socialmedia.dart';
import 'package:flutter/material.dart';
import 'package:advflutter_ch1/screen/contact/view/commponets/subtitle.dart';

class Contact_Screen extends StatelessWidget {
  const Contact_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contact Us',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),),
        body: Column(
          children: [
            SizedBox(height: 22,),
            Subtitle(),
             SizedBox(height: 20,),
             contact(Icons.phone_android_rounded,'+91 6353600958'),
             SizedBox(height: 20,),
             contact(Icons.mail,'info@gmail.com'),
             SizedBox(height: 50,),
             Container(
                height: 60,
                width: 280,
               decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
            border: Border.all(color: Colors.blue)
        ),
               child: Center(child: Text('Social Media',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),)),
      ),
             Socialmedia(),

      ],
        ),
    );
  }




}
