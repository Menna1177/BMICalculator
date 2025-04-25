import 'package:flutter/material.dart';

class BMICategoryList extends StatelessWidget {
  final double bmi;
  final String category;

  const BMICategoryList({super.key, required this.bmi, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xFF57094D),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              _categoryItem("Underweight", category == "Underweight"),
              _categoryItem("Normal", category == "Normal"),
              _categoryItem("Overweight", category == "Overweight"),
              _categoryItem("Obese Class I", category == "Obese Class I"),
              _categoryItem("Obese Class II", category == "Obese Class II"),
              _categoryItem("Obese Class III", category == "Obese Class III"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _categoryItem(String label, bool isHighlighted) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isHighlighted ? Color(0xFFCF248E) :Color(0xFF57094D) ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
