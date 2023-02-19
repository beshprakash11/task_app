import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Text("Detail Pages"),
      ),
    );
  }
}