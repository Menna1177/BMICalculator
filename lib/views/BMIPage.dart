import 'package:flutter/material.dart';

import '../conponent/BMICategoryList.dart';
import '../conponent/BMIResultCircle.dart';
import '../conponent/InfoContainer.dart';

class BMI extends StatefulWidget {
  final int height;
  final int weight;
  final int age;

  const BMI({super.key, required this.height, required this.weight, required this.age});

  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  late double bmi;
  late String category;

  @override
  void initState() {
    super.initState();
    bmi = widget.calculateBMI();
    category = getBMICategory(bmi);
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 24.9) return "Normal";
    if (bmi < 29.9) return "Overweight";
    if (bmi < 34.9) return "Obese Class I";
    if (bmi < 39.9) return "Obese Class II";
    return "Obese Class III";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A073C),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // ✅ Corrected navigation back function
          },
        ),
        backgroundColor: Color(0xFF2A073C),
        centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BMIResultCircle(bmi: bmi, category: category),
            SizedBox(height: 30),
            BMICategoryList(bmi: bmi, category: category),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoContainer(label: "Height", value: "${widget.height} cm"),
                InfoContainer(label: "Weight", value: "${widget.weight} kg"),
                InfoContainer(label: "Age", value: "${widget.age} years"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
