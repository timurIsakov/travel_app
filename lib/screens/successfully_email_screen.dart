import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../widget/button_widget.dart';

class SuccessfullyEmailScreen extends StatefulWidget {
  const SuccessfullyEmailScreen({super.key});

  @override
  State<SuccessfullyEmailScreen> createState() =>
      _SuccessfullyEmailScreenState();
}

class _SuccessfullyEmailScreenState extends State<SuccessfullyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              SizedBox(
                height: 152,
                width: 152,
                child: Center(
                  child: Image.asset(Assets.tSuccessfullyImage),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Successfully",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
              ),
              const SizedBox(height: 24),
              const Text(
                "Yahoo! You have successfully verified\nthe account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 330),
              ButtonWidget(
                  width: 326,
                  text: "Done",
                  color: Color(0xff24B24C),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const (),
                    //     ));
                  })
            ],
          ),
        ),
      ),

    );
  }
}
