import 'package:car_parking_project/Home%20Screen/vahicles_information_truck8.dart';
import 'package:flutter/material.dart';

import 'final_billing_information9.dart';

class VahiclesInformationTruck8 extends StatelessWidget {
  const VahiclesInformationTruck8({super.key});

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

      // 🔹 Main Content
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // 🔸 Billing Information Box
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Billing Information",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text.rich(TextSpan(
                            text: "Billing Type: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "Day",
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ])),
                        SizedBox(height: 6),
                        Text.rich(TextSpan(
                            text: "Start Date: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "March 25, 2025",
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ])),
                        SizedBox(height: 6),
                        Text.rich(TextSpan(
                            text: "End Date: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "March 30, 2025",
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ])),
                        SizedBox(height: 6),
                        Text.rich(TextSpan(
                            text: "Check-in Time: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "08:00AM",
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ])),
                        SizedBox(height: 6),
                        Text.rich(TextSpan(
                            text: "Parking Slot: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "2 Slot",
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ])),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 🔸 Vehicles Information Box
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Vehicles Information",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Select Vehicles Dropdown
                        _buildDropdown("Select Vehicles", "Car/Truck"),
                        const SizedBox(height: 15),

                        // Car Type Dropdown
                        _buildDropdown("Car Type", "Personal/Company"),
                        const SizedBox(height: 15),

                        // TextFields
                        _buildTextField("Car Make", "Type Here"),
                        const SizedBox(height: 15),
                        _buildTextField("Car Model", "Type Here"),
                        const SizedBox(height: 15),
                        _buildTextField(
                            "Car Number Plate", "license plate number"),
                        const SizedBox(height: 15),
                        _buildTextField("Car VIN", "Enter VIN Number"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔻 Continue Button Section
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
                  // 👉 পরের পেজে যাও
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const PaymentInformationPage()), // Next Page
                  );
                },
                child: const Text(
                  "Continue",
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

  // 🔹 Custom Dropdown Widget
  static Widget _buildDropdown(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              items: [
                DropdownMenuItem(value: value, child: Text(value)),
              ],
              onChanged: (v) {},
              isExpanded: true,
            ),
          ),
        ),
      ],
    );
  }

  // 🔹 Custom TextField Widget
  static Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.indigo, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}