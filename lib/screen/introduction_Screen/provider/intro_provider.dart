import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introprovider extends ChangeNotifier
{
  bool click= false;

  Future<void> onpress()
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('click', true);

    click= true;
    notifyListeners();
  }
  getresponse()
  async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    click = preferences.getBool('click') ?? false;

  }

  Introprovider()
  {
    getresponse();
  }

}