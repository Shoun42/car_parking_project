import 'package:flutter/material.dart';

import 'homepage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
          Center(child: Image.asset('assets/start_page.png')),

          SizedBox(height: 20),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                "Real-Time Parking Updates ",
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
              "With VIP ME, you can view live parking availability in your area. Get real-time updates on available spots, ensuring you always find a safe and convenient place to park—no more wasted time searching!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 0.5,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 105),

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
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
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
