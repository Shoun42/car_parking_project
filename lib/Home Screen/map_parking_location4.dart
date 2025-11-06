import 'package:flutter/material.dart';

class MapParkingLocation extends StatelessWidget {
  const MapParkingLocation({super.key});

  // থিম কালারগুলো এক জায়গায়
  Color get kPrimary => const Color(0xFFE8505B); // 🔴 তোমার চাওয়া রং
  Color get kPanelColor => const Color(0xFF1F2D3A); // নেভি-ডার্ক প্যানেল
  Color get kTextLight => const Color(0xFFB9C3CF);  // হালকা লেখা

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🗺️ Fullscreen Map Image
          Positioned.fill(
            child: Image.asset(
              "assets/GoogleMap.png",
              fit: BoxFit.cover,
            ),
          ),

          // ⬅️ Top-left Back Button
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: _circleButton(
                  context,
                  icon: Icons.arrow_back,
                  background: kPrimary,
                  onTap: () => Navigator.pop(context),
                ),
              ),
            ),
          ),

          // 🎯 Bottom-right Target/Zoom Button
          SafeArea(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 180),
                child: _circleButton(
                  context,
                  icon: Icons.gps_fixed, // বা Icons.my_location
                  background: kPrimary,
                  onTap: () {
                    // TODO: এখানে তোমার zoom/center logic দাও
                    debugPrint("Target button tapped");
                  },
                ),
              ),
            ),
          ),

          // 📋 Bottom Panel (like screenshot)
          _BottomInfoPanel(
            panelColor: kPanelColor,
            primary: kPrimary,
            textLight: kTextLight,
          ),
        ],
      ),
    );
  }

  // Reusable circular button
  Widget _circleButton(
      BuildContext context, {
        required IconData icon,
        required Color background,
        required VoidCallback onTap,
      }) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        iconSize: 24,
        onPressed: onTap,
        tooltip: 'Back',
      ),
    );
  }
}

class _BottomInfoPanel extends StatelessWidget {
  const _BottomInfoPanel({
    required this.panelColor,
    required this.primary,
    required this.textLight,
  });

  final Color panelColor;
  final Color primary;
  final Color textLight;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: panelColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 16,
                offset: Offset(0, -6),
              ),
            ],
          ),
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                "Easy Park Spot",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),

              // Info rows
              _infoRow(
                icon: Icons.location_on_outlined,
                label: "Las Vegas - 4.6 Km",
              ),
              const SizedBox(height: 6),
              _infoRow(
                icon: Icons.local_parking_outlined,
                label: "Available Slot: 6/12",
              ),
              const SizedBox(height: 14),

              // Buttons row
              Row(
                children: [
                  // View Details (outlined)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // TODO: details page
                        debugPrint("View Details tapped");
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white.withOpacity(.8)),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "View Details",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Continue (filled)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: continue flow
                        debugPrint("Continue tapped");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoRow({required IconData icon, required String label}) {
    return Row(
      children: [
        Icon(icon, size: 18, color: textLight),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: textLight,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}