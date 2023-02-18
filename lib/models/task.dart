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
        iconColor: kYellowDark,
        btnColor: kYellow,
        left: 3,
        done: 1,
      ),
      Task(iconData: Icons.cases_rounded, 
        title: 'Work', 
        bgColor: kRedLight,
        iconColor: kRedDark,
        btnColor: kRed,
        left: 0,
        done: 0,
      ),
      Task(iconData: Icons.favorite_rounded, 
        title: 'Healthy', 
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 3,
        done: 1,
      ),
    ];
  }

}