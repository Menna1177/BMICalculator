import 'package:flutter/material.dart';

class container extends StatelessWidget{
  const container({super.key , required this.text});
  String text;
  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );;
  }
}
