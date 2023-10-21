import 'package:flutter/material.dart';
import 'package:travel_app/screens/third_start_screen.dart';
import '../utils/assets.dart';
import '../widget/circle_button_widget.dart';
import '../widget/swape_widget.dart';

class SecondStartScreen extends StatefulWidget {
  final Function() onTap;
  const SecondStartScreen({super.key, required this.onTap});

  @override
  State<SecondStartScreen> createState() => _SecondStartScreenState();
}

class _SecondStartScreenState extends State<SecondStartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.lightGreenAccent.withOpacity(0.2)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            image: const DecorationImage(
                image: AssetImage(Assets.tGreenBackImage), fit: BoxFit.fill)),
        child: Column(
          children: [
            const SizedBox(height: 141),
            const Text(
              "Safe and\neasy",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 48, fontWeight: FontWeight.w700, height: 1.3),
            ),
            const SizedBox(height: 24),
            const Text(
              "Let’s start here!",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(height: 50),
            CircleButtonWidget(
              onTap: () {widget.onTap.call();
              },
              color: Colors.green,
              icon: Icons.arrow_forward,
            ),
            const SizedBox(height: 330),
            const SwapeWidget(current: 1, total: 3),
          ],
        ),
      ),
    );
  }
}
