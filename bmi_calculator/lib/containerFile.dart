import 'dart:ffi';

import 'package:flutter/material.dart';


class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({this.colors,this.cardwidget,this.onPressed});
  final Color? colors;
  final Widget? cardwidget;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardwidget,
        decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}