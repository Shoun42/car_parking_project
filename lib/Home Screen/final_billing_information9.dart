import 'package:flutter/material.dart';

import 'pryment_page_last.dart';

class PaymentInformationPage extends StatelessWidget {
  const PaymentInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A245A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A245A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Booking Information",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // 🔹 Billing Information Box
                  _buildInfoBox(
                    "Billing Information",
                    [
                      _buildInfoRow("Billing Type:", "Day"),
                      _buildInfoRow("Start Date:", "March 25, 2025"),
                      _buildInfoRow("End Date:", "March 30, 2025"),
                      _buildInfoRow("Check-in Time:", "08:00 AM"),
                      _buildInfoRow("Parking Slot:", "2 Slot"),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 🔹 Vehicles Information Box
                  _buildInfoBox(
                    "Vehicles Information",
                    [
                      _buildInfoRow("Vehicles Type:", "Car"),
                      _buildInfoRow("Car Type:", "Personal"),
                      _buildInfoRow("Car Make:", "BMW"),
                      _buildInfoRow("Car Model:", "BMW X7"),
                      _buildInfoRow("Car license plate:", "123456"),
                      _buildInfoRow("Car VIN Number:", "12345678"),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 🔹 Payment Information Box
                  _buildInfoBox(
                    "Payment Information",
                    [
                      _buildInfoRow("Booking Start:", "March 25, 2025"),
                      _buildInfoRow("Booking End:", "March 30, 2025"),
                      _buildInfoRow("Per Day:", "\$25.00"),
                      _buildInfoRow("Total Day:", "5 days"),
                      _buildInfoRow("Parking Slot:", "2"),
                      _buildInfoRow("Total Amount:", "\$250.00"),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // 🔻 Payment Button Section
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // 🔹 Payment Success Page এ যাও
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PaymentSuccessPage()),
                  );
                },
                child: const Text(
                  "Payment Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Info Box Builder
  Widget _buildInfoBox(String title, List<Widget> children) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }

  // 🔹 Info Row Builder
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: RichText(
        text: TextSpan(
          text: label,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          children: [
            TextSpan(
              text: " $value",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
