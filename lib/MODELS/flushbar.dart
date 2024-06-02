// ignore_for_file: prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class MyFlushBar {
  static showSimpleFlushBar(
      String message, BuildContext context, Color baccolor, Color textcolor) {
    return Flushbar(
      messageText: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(color: textcolor),
      ),
      shouldIconPulse: true,
      backgroundColor: baccolor,
      flushbarPosition: FlushbarPosition.TOP,
      duration:  Duration(seconds: 6),
    )..show(context);
  }
}
