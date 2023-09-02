import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageContainers {


  static void showErrorDialog({
    required BuildContext context,
    required String msg,
  }) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(msg),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            ));
  }


  static void showToast({
    required String msg,
    Color? clr,
    ToastGravity? gravity,
  }) {
    Fluttertoast.showToast(
      toastLength: Toast.LENGTH_LONG,
      msg: msg,
      backgroundColor: clr ?? Colors.green,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }

  static Future showProcessingDialog({
    required BuildContext context,
    required String processingTitle,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(processingTitle)
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }


  static void showSnackBar({
    required BuildContext context,
    required String msg,
    Color? clr,

  }) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg),backgroundColor: clr,));
  }


}
