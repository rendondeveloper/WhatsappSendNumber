import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loaderWidget({required context, required bool status, String? text}) {
  return Visibility(
    visible: status,
    child: Container(
      color: Colors.black38,
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Platform.isAndroid
                ? Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppBarTheme.of(context).backgroundColor ??
                                Theme.of(context).colorScheme.secondary),
                        backgroundColor: Colors.white),
                  )
                : const CupertinoActivityIndicator(),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(text ?? "", style: Theme.of(context).textTheme.titleSmall)),
          ],
        ),
      ),
    ),
  );
}
