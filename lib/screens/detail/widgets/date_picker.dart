import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weakList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final dayList = ['24','25', '26', '27', '28', '29', '30']; 

  var selected = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => 
          GestureDetector(
            onTap: () => setState(() => selected = index),
            child: Container(
              child: Column(children: [
                Text(
                  weakList[index],
                  style: TextStyle(
                    color: selected == index ? Colors.black : Colors.grey
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  dayList[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: selected == index ? Colors.black : Colors.grey
                  ),
                ),
              ],),

            ),
          ), 
          separatorBuilder: (_, index) => SizedBox(width: 5,), 
          itemCount: weakList.length
        ),
      ),
    );
  }
}