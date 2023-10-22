import 'package:flutter/material.dart';
import 'package:travel_app/screens/successfully_email_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/button_widget.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
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
                  child: Image.asset(Assets.tVerifyEmailImage),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Verify email",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
              ),
              const SizedBox(height: 24),
              const Text(
                "Please enter the 4 digit code sent to\nyourmail@example.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 330),
              ButtonWidget(
                  width: 326,
                  text: "Open Email",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SuccessfullyEmailScreen(),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
