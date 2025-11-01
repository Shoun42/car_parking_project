import 'package:car_parking_project/second_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
          SizedBox(height: 20),

          // Image
          Center(
            child: Image.asset('assets/home_logo.png'),
          ),

          SizedBox(height: 10),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                "Why Choose Us",
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
              "We make parking easy, secure, and stress-free. "
                  "Whether you're driving a car or a truck, find and reserve reliable parking spots in real-time, wherever you are. "
                  "With our simple booking and payment system, your parking experience is just a tap away!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: 0.5,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 40),

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
                      MaterialPageRoute(builder: (context) => const SecondPage()),
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

// 👉 Dummy Next Page বানানো হয়েছে যেন error না আসে
// class NextPage extends StatelessWidget {
//   const NextPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Next Page')),
//       body: Center(child: Text('Welcome to Next Page!')),
//     );
//   }
// }
