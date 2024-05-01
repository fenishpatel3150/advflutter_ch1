import 'package:advflutter_ch1/screen/counter/View/Counter_Screen.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/provider/intro_provider.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/view/intro_1.dart';
import 'package:advflutter_ch1/screen/introduction_Screen/view/intro_4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Intro_Screen3 extends StatelessWidget {
  const Intro_Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                  height: 300,
                  width: 250,
                  child: Image.asset('assets/image3.png'))),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We Provide ",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold),

                )              ),
              Text(
                  "Fast",
                  style: GoogleFonts.lato(textStyle: TextStyle(
                      color: Color(0xfffdc913),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),)
              ),
            ],
          ),
          Text(
              'Food service',
              style: GoogleFonts.lato(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'We provide organic food service \n  our customer from Anywhere',
            style: GoogleFonts.lato(textStyle: TextStyle( fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 18)),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 15,
                color:Colors.grey,
              ),
              SizedBox(width: 15,),
              Container(
                height: 5,
                width: 15,
                color:Colors.grey,
              ),
              SizedBox(width: 15,),
              Container(
                height: 5,
                width: 15,
                color:Color(0xfffdc913),
              ),
            ],
          ),
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              Provider.of<Introprovider>(context,listen: false).onpress();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => intro_Screen4(),));
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfffdc913),
              ),
              child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
