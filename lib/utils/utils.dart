import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static double avgRating(List<int> ratings) {
    double average = ratings.reduce((a, b) => a + b) / ratings.length;
    return double.parse(average.toStringAsFixed(1));
  }

  static fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      // backgroundColor: Colors.red,
      // textColor: Colors.white,
      // fontSize: 30,
      // toastLength: Toast.LENGTH_LONG,
    );
  }

  static flushBarErrorMessage(
      /*String title,*/ String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        backgroundColor: Colors.red,
        message: message,
        duration: const Duration(seconds: 3),
        // title: title,
        // titleColor: Colors.black,
        // margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
        // padding: const EdgeInsets.all(20.0),
        // forwardAnimationCurve: Curves.bounceInOut,
        // flushbarPosition: FlushbarPosition.TOP,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      )..show(context),
    );
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        // backgroundColor: Colors.red,
        content: Text(message)));
  }
}
