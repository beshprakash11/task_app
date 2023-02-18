import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  const GoPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text('Premium')
          ),
        ],
      ),
    );
  }
}