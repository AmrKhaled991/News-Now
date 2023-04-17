import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showloading(BuildContext context, {String message = ''}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            Row(
              children: [
                CircularProgressIndicator(),
                message != ' ' ? Text(message) : Text("Loading")
              ],
            )
          ],
        );
      });
}

void hideloading(BuildContext context) {
  Navigator.pop(context);
}

void showmessage(
    {required BuildContext context,
    required String message,
    required String posclic,
    required Function postaction,
    String? negclic,
    Function? negaction}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  postaction();
                },
                child: Text(posclic))
          ],
        );
      },barrierDismissible: false
      );

}


