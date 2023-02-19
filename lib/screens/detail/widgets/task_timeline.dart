import 'package:flutter/material.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  TaskTimeline(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeline(detail['tlColor'])
        ],
      ),
    );
  }

  Widget _buildTimeline(Color color, ){
    return Container();
  }
}