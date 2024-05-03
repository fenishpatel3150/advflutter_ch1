import 'package:advflutter_ch1/screen/galleryapp/provider/galleryprovider.dart';
import 'package:advflutter_ch1/screen/galleryapp/view/hiddenscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> handleFingerprint(BuildContext context)
async {

  final fringerProvider = Provider.of<galleryprovider>(context, listen: false);await fringerProvider.fingerprint();
  if (fringerProvider.reponse) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Hiddenscreen(),
      ),
    );
  }
}