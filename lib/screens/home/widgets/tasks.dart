import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTask();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), 
        itemBuilder: itemBuilder
      ),
    );
  }
  
}