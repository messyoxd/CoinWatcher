import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

void showSnackBar(BuildContext context, {String msg}) {
  Flushbar(
    message: msg,
    duration: Duration(seconds: 3),
  )..show(context);
}