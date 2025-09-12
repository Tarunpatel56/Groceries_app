import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groceries/firebase_options.dart';
import 'package:groceries/home_screen/bottem_bar.dart';
import 'package:groceries/login/Login_page.dart';
import 'package:groceries/login/sign_page.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) 
  {
    return Sizer(  builder: (context, orientation, screenType)
      return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: MyBagScreen(),
      home: SelidingScreen(),
              ),
    );
  }
}
