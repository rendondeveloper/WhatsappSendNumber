import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappsendnumber/resources/extensions/extension_context.dart';

void showDialogCustom(
    {Key? key,
    required final BuildContext context,
    required final Text title,
    required final Text message,
    final String? textOk,
    final String? textCancel,
    final TextStyle? textStyleButtonFlag,
    final VoidCallback? callbackOk,
    final VoidCallback? callbackCancel,
    AlertDialog Function(BuildContext context)? builder}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return Platform.isAndroid
          ? AlertDialog(
              title: title,
              content: message,
              actions: <Widget>[
                TextButton(
                  onPressed: callbackCancel != null
                      ? () {
                    callbackCancel();
                  }
                      : () {
                    Navigator.of(context).pop();
                  },
                  child: Text(context.strings().dialogDeleteNumberButtonNo,
                      style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
                ),
                TextButton(
                  onPressed: callbackOk != null
                      ? () {
                          callbackOk();
                          Navigator.of(context).pop();
                        }
                      : () {
                          Navigator.of(context).pop();
                        },
                  child: Text(context.strings().dialogDeleteNumberButtonYes,
                      style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
                ),
              ],
            )
          : CupertinoAlertDialog(
              title: title,
              content: message,
              actions: <Widget>[
                CupertinoDialogAction(
                    child: Text(context.strings().dialogDeleteNumberButtonNo,
                        style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
                    onPressed: () {
                      final action = callbackCancel ?? Navigator.of(context).pop();
                      action;
                    }),
                CupertinoDialogAction(
                  child: Text(context.strings().dialogDeleteNumberButtonYes,
                      style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
                  onPressed: () {
                    if (callbackOk != null) {
                      callbackOk();
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
    },
  );
}
