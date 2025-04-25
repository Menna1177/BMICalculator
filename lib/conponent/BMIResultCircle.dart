import 'package:flutter/material.dart';

class BMIResultCircle extends StatelessWidget {
  final double bmi;
  final String category;

  const BMIResultCircle({super.key, required this.bmi, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xFFCF248E),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
          "BMI",
          style: TextStyle(fontSize: 40, color: Colors.white ,fontWeight: FontWeight.bold),
        ),
          Text(
            bmi.toStringAsFixed(1),
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Container(
            child: Text(
              category,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
