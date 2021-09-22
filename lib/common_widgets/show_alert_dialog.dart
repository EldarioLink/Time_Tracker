import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> showAlertDialog(
  BuildContext context, {
  required String title,
  required String content,
  required String defaultActionText,
  String? cancellActionText,
}) async {
  if (!Platform.isIOS) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                if (cancellActionText != null)
                  TextButton(
                      child: Text(cancellActionText),
                      onPressed: () => Navigator.of(context).pop(false)),
                TextButton(
                  child: Text(defaultActionText),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            ));
  }

  if (!Platform.isIOS) {
    return showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                if (cancellActionText != null)
                  CupertinoDialogAction(
                      child: Text(cancellActionText),
                      onPressed: () => Navigator.of(context).pop(false)),
                CupertinoDialogAction(
                  child: Text(defaultActionText),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            ));
  }
}
