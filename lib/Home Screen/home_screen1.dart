import 'package:flutter/material.dart';
import 'Filter2.dart';
import 'only_map3.dart';
import 'parking_details5.dart'; // ✅ Parking Details পেজ ইমপোর্ট করো

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 18),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Sabbir Ahamed",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 14, color: Colors.white70),
                        SizedBox(width: 4),
                        Text(
                          "Bangladesh",
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                    Icons.notifications_none_outlined, color: Colors.white),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ParkingFilterWidget()),
                    );
                  },
                  child: const Icon(Icons.sort, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Explore Parking Spots on the Map",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Sort",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnlyMap()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/map.png",
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Parking Near You",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // 🔹 Park Card List
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // ✅ ক্লিক করলে ParkingDetails5 পেজে যাবে
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ParkingDetails5()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/park_save_zone.png",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                          'Park Safe Zone ${index + 1}',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Icon(Icons.favorite_border,
                                            color: Colors.red),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,
                                            size: 16, color: Colors.blueGrey),
                                        SizedBox(width: 4),
                                        Text(
                                          'Las Vegas - 4.6 Km',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Row(
                                      children: [
                                        Icon(Icons.local_parking,
                                            size: 16, color: Colors.blueGrey),
                                        SizedBox(width: 4),
                                        Text(
                                          'Available Slot: 6/12',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Price: \$25/Day',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius:
                                            BorderRadius.circular(6),
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                '4.4',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(width: 3),
                                              Icon(Icons.star,
                                                  color: Colors.white,
                                                  size: 14),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            // 🔹 Bottom Icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(Icons.home, color: Colors.indigo, size: 28),
                    Text("Home", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.calendar_month_outlined,
                        color: Colors.indigo, size: 28),
                    Text("MY Reservation", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.favorite_border, color: Colors.indigo, size: 28),
                    Text("Favorite", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.account_circle_outlined,
                        color: Colors.indigo, size: 28),
                    Text("Profile", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
