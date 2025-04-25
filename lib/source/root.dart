import 'package:flutter/material.dart';
import 'package:untitled/views/homePage.dart';
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
