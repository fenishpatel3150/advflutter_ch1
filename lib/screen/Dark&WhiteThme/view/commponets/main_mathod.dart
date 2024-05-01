import 'package:advflutter_ch1/screen/Dark&WhiteThme/provider/Theme_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Row mode(BuildContext context) {
  return Row(
    children: [
      SizedBox(width: 10,),
      Icon(Provider.of<Themeprovider>(context).dark
          ? Icons.nightlight
          : Icons.sunny,
        color: Theme.of(context).colorScheme.primary,),
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
  );
}
