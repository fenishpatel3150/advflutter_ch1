import 'package:advflutter_ch1/screen/counter/provider/Counter_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter_Screen extends StatelessWidget {
  const Counter_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Counter App',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child:
        Text(Provider.of<Counterprovider>(context,listen: true).count.toString(),style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Provider.of<Counterprovider>(context,listen: false).counter();
        },
        child: Icon(Icons.add),
      ),

    );
  }
}
