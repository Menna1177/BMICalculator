import 'package:flutter/material.dart';
import 'package:untitled/conponent/Age.dart';
import 'package:untitled/conponent/Gender.dart';
import 'package:untitled/conponent/height.dart';
import 'package:untitled/views/BMIPage.dart';
import '../conponent/container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  String gender = 'Male';
  int userHeight = 120;
  int userWeight = 60;
  int userAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A073C),
      appBar: AppBar(
        backgroundColor: Color(0xFF2A073C),
        centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                GenderCard(
                  label: "Male",
                  icon: Icons.male,
                  isSelected: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                      gender = "Male";
                    });
                  },
                ),
                GenderCard(
                  label: "Female",
                  icon: Icons.female,
                  isSelected: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                      gender = "Female";
                    });
                  },
                ),
              ],
            ),
            height(
              onHeightChanged: (value) {
                setState(() {
                  userHeight = value;
                });
              },
            ),
            Row(
              children: [
                WeightAgeContainer(
                  onWeightChanged: (value) {
                    setState(() {
                      userWeight = value;
                    });
                  },
                ),
                Age(
                  onAgeChanged: (value) {
                    setState(() {
                      userAge = value;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMI(height: userHeight, weight: userWeight, age: userAge),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFCF248E),
                padding: EdgeInsets.symmetric(horizontal: 160, vertical: 16),
              ),
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
