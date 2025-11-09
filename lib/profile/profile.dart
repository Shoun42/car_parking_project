import 'package:car_parking_project/profile/profile_page_two.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2B4A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2B4A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Info Section
            Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  // backgroundImage: AssetImage('assets/profile.jpg'), // তোমার asset image path
                ),
                const SizedBox(height: 10),
                const Text(
                  "Isabella Olivia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "example@gmail.com",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const Text(
                  "Phone: 123456789132",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePage()));
                  },
                  child: const Text("Edit Profile"),
                ),
              ],
            ),
            const SizedBox(height: 25),

            // Account Settings Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  _buildListTile(Icons.lock_outline, "Password"),
                  _buildListTile(Icons.history, "Transaction History"),
                  _buildListTile(Icons.description_outlined, "Terms & Conditions"),
                  _buildListTile(Icons.privacy_tip_outlined, "Privacy Policy"),
                  _buildListTile(Icons.contact_support_outlined, "Contact Us"),
                  _buildListTile(Icons.delete_outline, "Delete Account", color: Colors.redAccent),
                  _buildListTile(Icons.logout, "Log Out", color: Colors.redAccent),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        currentIndex: 3, // profile page index
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "My Reservation"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  // custom list tile widget
  static Widget _buildListTile(IconData icon, String title, {Color color = Colors.black}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(color: color, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}