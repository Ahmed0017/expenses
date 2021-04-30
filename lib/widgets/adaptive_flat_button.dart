import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function presentDatePicker;

  AdaptiveFlatButton(this.text, this.presentDatePicker);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text),
            onPressed: presentDatePicker,
          )
        : TextButton(
            child: Text(text),
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker,
          );
  }
}
