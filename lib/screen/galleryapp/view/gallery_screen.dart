import 'package:advflutter_ch1/screen/galleryapp/provider/galleryprovider.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/commponets/pop_screen.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/hiddenscreen.dart';
import 'package:advflutter_ch1/screen/galleryapp/models/gallerylist.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(child: Text('Albums',style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  popmethod()
                ],
              ),
              SizedBox(height: 20,),
              GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 18,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 140,
              ), itemBuilder: (context, index) =>image(profileimage[index]['image'],profileimage[index]['name'],profileimage[index]['num']) ,),

            ],
          ),
        ),
      ),
    );
  }
  Widget image(String i1,String name, int num) {
    return Column(
      children: [
        Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image:AssetImage(i1),fit: BoxFit.cover)
              ),
        ),
        Text(name),
        Text(num.toString(),style: TextStyle(color: Colors.grey),),
      ],
    );
  }
}
