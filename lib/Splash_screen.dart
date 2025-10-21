import 'package:car_parking_project/Authentication_Screen/forget_password.dart';
import 'package:flutter/material.dart';
import 'homepage.dart'; // 🟡 তোমার HomePage ফাইল যেখানে আছে, সেই path টা ঠিক করে দাও

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // ৪ সেকেন্ড পর HomePage এ যাবে
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      body: Center(
        child: Image.asset("logo.png"), // 🖼️ অ্যাসেট ফাইলের নাম ঠিক করো
      ),
    );
  }
}
