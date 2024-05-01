
import 'package:advflutter_ch1/screen/contact/view/commponets/contactlist.dart';
import 'package:flutter/material.dart';

Container Socialmedia() {
  return Container(
    height: 330,
    width: 280,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
        border: Border.all(color: Colors.blue)
    ),
    child: Column(
      children: [
        SizedBox(height: 30,),
        contactlink('assets/linkedin.jpeg', 'Linkedin'),
        SizedBox(height: 20,),
        Divider(
          indent: 20,
          endIndent: 20,
          color: Colors.blue,
        ),
        SizedBox(height: 20,),
        contactlink('assets/github.jpeg','Github'),
        SizedBox(height: 20,),
        Divider(
          indent: 20,
          endIndent: 20,
          color: Colors.blue,
        ),
        SizedBox(height: 20,),
        contactlink('assets/inatsgram.jpeg','Instagram'),
        SizedBox(height: 10,),
      ],
    ),

  );
}