import 'package:car_parking_project/Authentication_Screen/forget_email.dart';
import 'package:car_parking_project/Splash_screen.dart';
import 'package:flutter/material.dart';

import 'Authentication_Screen/login_screen.dart';
import 'Home Screen/home_screen.dart';
import 'homepage.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: SplashScreen(),

      home: HomeScreen(),
    );
  }
}
