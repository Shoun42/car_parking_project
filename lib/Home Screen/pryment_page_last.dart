import 'package:flutter/material.dart';
import 'dart:math';
import 'home_screen1.dart'; // 🏠 তোমার হোম পেজ ইমপোর্ট করো

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage>
    with TickerProviderStateMixin {
  late AnimationController _iconController;
  late Animation<double> _scaleAnimation;
  late AnimationController _bubbleController;

  @override
  void initState() {
    super.initState();

    // ✅ Checkmark bounce animation
    _iconController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _scaleAnimation =
        CurvedAnimation(parent: _iconController, curve: Curves.elasticOut);

    _iconController.forward();

    // 🎈 Bubble floating animation
    _bubbleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _iconController.dispose();
    _bubbleController.dispose();
    super.dispose();
  }

  // 🏠 Go Home function
  void goHome() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false,
    );
  }

  // 🔹 Bubble painter
  Widget buildBubbles() {
    return AnimatedBuilder(
      animation: _bubbleController,
      builder: (context, child) {
        final random = Random();
        return CustomPaint(
          painter: BubblePainter(_bubbleController.value, random),
          child: const SizedBox.expand(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2A5E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E2A5E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.redAccent),
          onPressed: goHome, // ✅ এখন ব্যাক চাপলে HomeScreen এ যাবে
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // 🎈 Floating bubbles
          buildBubbles(),

          // ✅ Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Color(0xFF1E2A5E),
                    size: 70,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Payment Successful!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your Turf spot booking has been successfully reserved",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: goHome,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                  ),
                  child: const Text(
                    "Go Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// 🎈 Bubble Painter Class
class BubblePainter extends CustomPainter {
  final double progress;
  final Random random;

  BubblePainter(this.progress, this.random);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withOpacity(0.2);
    for (int i = 0; i < 25; i++) {
      final dx = random.nextDouble() * size.width;
      final dy = (random.nextDouble() * size.height) * (1 - progress);
      final radius = random.nextDouble() * 6 + 2;
      canvas.drawCircle(Offset(dx, dy), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant BubblePainter oldDelegate) => true;
}
