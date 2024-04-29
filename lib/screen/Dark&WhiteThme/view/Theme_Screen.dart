
import 'package:advflutter_ch1/screen/Dark&WhiteThme/provider/Theme_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Theme_Screen extends StatelessWidget {
  const Theme_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text('TestingUser',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.sunny,color:Theme.of(context).colorScheme.secondary,),
              SizedBox(width: 20,),
              Text('Light Mode',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
              Spacer(),
              Switch(
                value:Provider.of<Themeprovider>(context,listen: true).dark,
                onChanged: (value)
                {
                Provider.of<Themeprovider>(context,listen: false).theme(value);
              },)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.grid_on,color:Theme.of(context).colorScheme.secondary,),
              SizedBox(width: 20,),
              Text('Story',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.settings,color:Theme.of(context).colorScheme.primary,),
              SizedBox(width: 20,),
              Text('Setting and Privacy',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.message_outlined,color:Theme.of(context).colorScheme.secondary,),
              SizedBox(width: 20,),
              Text('Help Center',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.notifications,color: Theme.of(context).colorScheme.primary,),
              SizedBox(width: 20,),
              Text('Notification',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            ],
          ),
        ],
      ),
    );
  }
}
