
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'as launcher;

Container contact(IconData iconData,String? name) {
  return   Container(
    height: 60,
    width: 330,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.blue)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: (){

              if(name=='+91 6353600958')
              {
                Uri url = Uri.parse('tel: +91 6353600958');
                launcher.launchUrl(url);
              }else if(name=='info@gmail.com')
              {
                Uri url =Uri.parse('mailto: patelfenish34@gmail.com');
                launcher.launchUrl(url);
              }

            },
            child: Icon(iconData,color: Colors.blue,size: 35,)),
        SizedBox(width: 20,),
        Text(name!,style: TextStyle(fontSize: 20),),
      ],
    ),
  );
}