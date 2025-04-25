import 'package:flutter/material.dart';
import 'Text.dart';

class WeightAgeContainer extends StatefulWidget {
  final ValueChanged<int> onWeightChanged;

  const WeightAgeContainer({
    super.key,
    required this.onWeightChanged,
  });

  @override
  State<WeightAgeContainer> createState() => _WeightAgeContainerState();
}

class _WeightAgeContainerState extends State<WeightAgeContainer> {
  int countW = 60;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF57094D),
          ),
          height: 210,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TexT(text: 'WEIGHT'),
              SizedBox(height: 5),
              Text(
                '$countW',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCF248E),
                    ),
                    onPressed: () {
                      setState(() {
                        countW--;
                      });
                      widget.onWeightChanged(countW);
                    },
                    child: Text('-',style: TextStyle(fontSize: 34 ,color: Colors.white),),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCF248E),
                    ),
                    onPressed: () {
                      setState(() {
                        countW++;
                      });
                      widget.onWeightChanged(countW);
                    },
                    child: Text('+',style: TextStyle(fontSize: 34 ,color: Colors.white),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
