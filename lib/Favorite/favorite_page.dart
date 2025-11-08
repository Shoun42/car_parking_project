import 'package:flutter/material.dart';
import '../Home Screen/home_screen1.dart';
// ✅ HomeScreen ইমপোর্ট করো

class FavoriteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> parkingList = [
    {
      "title": "Easy Park Spot",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 6/12",
      "price": "Price: \$25/Day",
      "rating": "4.4",
      "image": "assets/park_pro.png"
    },
    {
      "title": "Easy Park Spot",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 6/12",
      "price": "Price: \$25/Day",
      "rating": "4.4",
      "image": "assets/park_pro.png"
    },
    {
      "title": "Easy Park Spot",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 6/12",
      "price": "Price: \$25/Day",
      "rating": "4.4",
      "image": "assets/park_pro.png"
    },
    {
      "title": "Easy Park Spot",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 6/12",
      "price": "Price: \$25/Day",
      "rating": "4.4",
      "image": "assets/park_pro.png"
    },
    {
      "title": "Easy Park Spot",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 6/12",
      "price": "Price: \$25/Day",
      "rating": "4.4",
      "image": "assets/park_pro.png"
    },

    {
      "title": "Park Pro Space",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 4/12",
      "price": "Price: \$25/Day",
      "rating": "4.6",
      "image": "assets/park_pro.png"
    },
    {
      "title": "Park Safe Zone",
      "location": "Las Vegas - 4.6 Km",
      "slots": "Available Slot: 8/12",
      "price": "Price: \$25/Day",
      "rating": "4.8",
      "image": "assets/park_pro.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Favorite",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: parkingList.length,
        itemBuilder: (context, index) {
          final item = parkingList[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                  ),
                  child: SizedBox(
                    width: 115,
                    height: 100,
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['title'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 4),
                      Text(item['location'],
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13)),
                      Text(item['slots'],
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13)),
                      const SizedBox(height: 6),
                      Text(item['price'],
                          style: const TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.indigo, size: 24),
                    const SizedBox(height: 10),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade400,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        item['rating'],
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
              ],
            ),
          );
        },
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Favorite Selected
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            // Home icon tapped
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          }
          // অন্যগুলোতে যদি প্রয়োজন হয়, এখানে add করতে পারো
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "My Reservation"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
