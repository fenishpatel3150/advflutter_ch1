import 'package:flutter/cupertino.dart';

class Counterprovider extends ChangeNotifier
{
  int count =0;

  counter()
  {
    count++;
   notifyListeners();
  }
}