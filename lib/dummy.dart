import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(color: Colors.red),
          ), /// use 

          SizedBox.expand() ,//use 
          Baseline(baseline: 10, baselineType: TextBaseline.alphabetic), //run

          ColoredBox(color: Colors.red,child: Icon(Icons.reddit),),
          LimitedBox(),
          


        ],
      ),
    );
  }
}
