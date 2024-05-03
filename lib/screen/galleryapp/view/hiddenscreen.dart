import 'package:advflutter_ch1/screen/galleryapp/models/gallerylist.dart';
import 'package:flutter/material.dart';

class Hiddenscreen extends StatelessWidget {
  const Hiddenscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HiddenScreen'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              shrinkWrap: true,
              physics: ScrollPhysics(),
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
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image:AssetImage(i1),fit: BoxFit.cover)
      ),
    );
  }
}
