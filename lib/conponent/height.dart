import 'package:flutter/material.dart';
class height extends StatefulWidget {
  const height({super.key , required this.onHeightChanged});
  final ValueChanged<int> onHeightChanged;
  @override
  State<height> createState() => _heightState();
}

class _heightState extends State<height> {
  int heighta =120;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Color(0xFF57094D),
          borderRadius: BorderRadius.circular(15)
      ),

      height: 300,
      width: 430,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Height',style: TextStyle(color: Colors.white, fontSize: 40,),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(heighta.toString(),textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600 ,color: Colors.white ),),
                SizedBox(width: 3,),
                Text('cm',textAlign: TextAlign.center ,style: TextStyle(fontSize: 25,color: Colors.white)),
              ],
            ),
            SliderTheme(data: SliderTheme.of(context).copyWith(
                thumbColor: Color(0xFFCF248E),
                thumbShape:
                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                overlayShape:RoundSliderOverlayShape(overlayRadius: 20.0) ),
                child:
                Slider(
                  value: heighta.toDouble(),
                  min: 120,
                  max: 200,
                  activeColor: Color(0xFFCF248E),
                  inactiveColor: Color(0xFF2A073C),
                  onChanged: (double newvalue){
                    setState(() {
                      heighta = newvalue.round();
                    });
                    widget.onHeightChanged(heighta);
                  },
                )
            ),
          ],
        ),
      ),



    );
  }
}
