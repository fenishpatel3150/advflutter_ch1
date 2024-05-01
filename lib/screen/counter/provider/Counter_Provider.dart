
import 'package:flutter/material.dart';

class counterprovider extends ChangeNotifier
{
  int count =0;

  counter()
  {
    count++;
   notifyListeners();
  }
}