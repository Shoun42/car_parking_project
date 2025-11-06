import 'package:car_parking_project/Authentication_Screen/forget_email.dart';
import 'package:car_parking_project/Splash_screen.dart';
import 'package:flutter/material.dart';

import 'Authentication_Screen/login_screen.dart';
import 'Home Screen/billing_information6.dart';
import 'Home Screen/home_screen1.dart';
import 'Home Screen/map_parking_location4.dart';
import 'Home Screen/parking_details5.dart';
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
     // home: BillingInformation6(),
    );
  }
}
