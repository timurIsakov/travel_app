import 'package:flutter/material.dart';
import 'package:travel_app/screens/sign_in_screen.dart';

import '../utils/assets.dart';
import '../widget/swape_widget.dart';

class ThirdStartScreen extends StatefulWidget {
  const ThirdStartScreen({super.key});

  @override
  State<ThirdStartScreen> createState() => _ThirdStartScreenState();
}

class _ThirdStartScreenState extends State<ThirdStartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, const Color(0xffCFE2FF).withOpacity(1)],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            image: const DecorationImage(
                image: AssetImage(Assets.tBlueBackImage), fit: BoxFit.fill)),
        child: Column(
          children: [
            const SizedBox(height: 141),
            const Text(
              "Wellcome\nto Travee",
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
            InkResponse(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
              },
              splashColor: Colors.black,
              child: Container(
                height: 72,
                width: 111,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff1F41F4)),
                child: const Center(
                    child: Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ),
            ),
            const SizedBox(height: 330),
            const SwapeWidget(current: 2, total: 3),
          ],
        ),
      ),
    );
  }
}
