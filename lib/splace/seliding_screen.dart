import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelidingScreen extends StatefulWidget {
  const SelidingScreen({super.key});

  @override
  State<SelidingScreen> createState() => _SelidingScreenState();
}

class _SelidingScreenState extends State<SelidingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
  width: Adaptive.w(20),    // This will take 20% of the screen's width
  height: 30.5.h 
  ,    // This will take 30.5% of the screen's height
child: Image.asset("assets/applogo.png"),
),
Text(
  'Sizer', 
  style: TextStyle(fontSize: 15.dp), 
  // 15.sp can also be used instead of .dp
  // To know their differences, check #FAQ
),
Device.orientation == Orientation.portrait
  ? Container(   // Widget for Portrait
      width: 100.w,
      height: 20.5.h,
    
   )
  : Container(   // Widget for Landscape
      width: 100.w,
      height: 12.5.h,
   ),
   Device.screenType == ScreenType.tablet
  ? Container(   // Widget for Tablet
      width: 100.w,
      height: 20.5.h,
   )
  : Container(   // Widget for Mobile
      width: 100.w,
      height: 12.5.h,
   )
        ],
      ),
    );
  }
}