import 'package:flutter/material.dart';
import 'package:task_app/constants/colors.dart';

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
  
  static List<Task> generateTask(){
    return [
      Task(iconData: Icons.person_rounded, 
        title: 'Personal', 
        bgColor: kYellowLight,
        iconColor: kYellow,
        left: 3,
        done: 1,
      ),
    ];
  }

}