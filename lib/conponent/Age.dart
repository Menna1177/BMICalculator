import 'package:flutter/material.dart';

import 'Text.dart';
class Age extends StatefulWidget {
  final ValueChanged<int>onAgeChanged;
 const Age({
    super.key,
   required this.onAgeChanged,
});
  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int countA =20;
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
              TexT(text: 'AGE'),
              SizedBox(height: 5),
              Text(
                '$countA',
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
                        countA--;
                      });
                      widget.onAgeChanged(countA);
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
                        countA++;
                      });
                      widget.onAgeChanged(countA);
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
