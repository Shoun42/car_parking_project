import 'package:car_parking_project/homepage.dart';
import 'package:flutter/material.dart';

import 'start_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 11, color: Colors.blueGrey),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),

          // Image
          Center(child: Image.asset('assets/second_page.png')),

          SizedBox(height: 20),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                "Find, Reserve, Park!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 8),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "With VIP ME, parking has never been easier. Whether you're driving a car or a truck, quickly discover secure, available parking spots nearby, reserve them in real-time, and park with peace of mind. Save time, reduce stress, and never worry about finding parking again!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 0.5,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 260),

          // Row with icons and Next button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                // Icons on the left
                Icon(Icons.album_rounded, color: Colors.red, size: 20),
                SizedBox(width: 5),
                Icon(Icons.album_rounded, color: Colors.red, size: 20),
                SizedBox(width: 5),
                Icon(Icons.album_rounded, color: Colors.red, size: 20),

                Spacer(),

                // ✅ Next Button with Navigator
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
