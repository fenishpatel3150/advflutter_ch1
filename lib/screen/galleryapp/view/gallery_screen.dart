import 'package:advflutter_ch1/screen/galleryapp/provider/galleryprovider.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/commponets/pop_screen.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/hiddenscreen.dart';
import 'package:advflutter_ch1/utlis/global/gallerylist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Gallery_Screen extends StatelessWidget {
  const Gallery_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text('Gallery'),
        ),
      ),
      body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Icon(Icons.search),
                SizedBox(width: 10,),
                PopupMenuButton(itemBuilder: (context) => [
                  PopupMenuItem(child:

                  Text('Hidde'),
                    onTap: ()
                   {
                     handleFingerprint(context);
                   },
                  ),
                  PopupMenuItem(child:
                  Text('Selected All'),
                    onTap: () {},
                  )
                ],)
              ],
            ),
            SizedBox(height: 20,),
            GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              shrinkWrap: true,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
                crossAxisSpacing: 10,
            ), itemBuilder: (context, index) =>image(profileimage[index]['image']) ,),

          ],
        ),
      ),
    );
  }


  Container image(String i1) {
    return Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image:AssetImage(i1),fit: BoxFit.cover)
          ),
        );
  }
}
