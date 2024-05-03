import 'package:advflutter_ch1/screen/galleryapp/models/gallerylist.dart';
import 'package:flutter/material.dart';

class Hiddenscreen extends StatelessWidget {
  const Hiddenscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HiddenScreen'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Pictures',style: TextStyle(fontSize: 20),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('Select',style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Pictures_grid(),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Pictures',style: TextStyle(fontSize: 20),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('Select',style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Pictures_grid(),
            ],
          ),
        ),
      ),
    );
  }

  GridView Pictures_grid() {
    return GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 15,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
              ), itemBuilder: (context, index) =>image(profileimage[index]['image']) ,);
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
