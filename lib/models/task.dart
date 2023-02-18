import 'package:flutter/cupertino.dart';

class Task{
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;
  Task({
    this.iconData, this.title, this.bgColor, 
    this.iconColor, this.btnColor, this.left,
    this.done, this.isLast = false
  });
}