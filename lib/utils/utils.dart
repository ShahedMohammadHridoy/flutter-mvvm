import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      // backgroundColor: Colors.red,
      // textColor: Colors.white,
      // fontSize: 30,
      // toastLength: Toast.LENGTH_LONG,
    );
  }


}
