import 'package:flutter/material.dart';
class TexT extends StatelessWidget {
  const TexT({super.key , required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}
