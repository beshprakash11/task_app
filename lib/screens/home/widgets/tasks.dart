import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTask();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: tasksList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), 
        itemBuilder: (context, index) => 
        tasksList[index].isLast ? _buildAddTask() : _buildTask(context, tasksList[index])
      ),
    );
  }
  
  Widget _buildAddTask(){
    return Text("Add Task");

  }

  Widget _buildTask(BuildContext context, Task task){
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: task.bgColor,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}