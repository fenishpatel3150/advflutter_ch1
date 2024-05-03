
  import 'package:advflutter_ch1/screen/galleryapp/provider/galleryprovider.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/hiddenscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

PopupMenuButton<dynamic> popmethod() {
    return PopupMenuButton(itemBuilder: (context) => [
                PopupMenuItem(child:

                Text('Hidde'),
                  onTap: ()
                 async {
                    if(await Provider.of<galleryprovider>(context,listen: false).fingerprint())
                      {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Hiddenscreen(),));
                      }

                    },
                ),
                PopupMenuItem(child:
                Text('Selected All'),
                  onTap: () {},
                )
              ],);
  }