
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart'as launcher;
InkWell contactlink(String? image, String? name) {
  return InkWell(
    onTap: ()
    {
      if(name=='Linkedin')
      {
        Uri url = Uri.parse('https://www.linkedin.com/feed/');
        launcher.launchUrl(url);
      }else if(name=='Github'){

        Uri url = Uri.parse('https://github.com/fenishpatel3150');
        launcher.launchUrl(url);
      }else if(name=='Instagram')
      {
        Uri url = Uri.parse('https://www.instagram.com/');
        launcher.launchUrl(url);

      }
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 50,),
          child: Container(
            height: 40,
              width: 40,
              child: Image.asset(image!,fit: BoxFit.fill,)),
        ),
        SizedBox(width: 20,),
        Text(name!,style: TextStyle(fontSize: 20,),),
      ],
    ),
  );
}