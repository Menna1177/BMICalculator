import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String label;
  final String value;

  const InfoContainer({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF57094D),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Text(
            value,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
