import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';

class galleryprovider extends ChangeNotifier {
  final auth = LocalAuthentication();

  Future<bool> fingerprint() async {
    bool isSupported = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;


    if (isSupported && isActive) {
      bool reponse = await auth.authenticate(
          localizedReason: 'Please add your fingerprint...');

      if (reponse) {
        log('fingerprint successfully worked!');
        return true;
      } else {
        return false;
      }
    } else {
      log("Your device is not supported for fingerprint...!");
      return false;
    }
    return false;
  }
}