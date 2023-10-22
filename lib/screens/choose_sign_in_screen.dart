import 'package:flutter/material.dart';
import 'package:travel_app/screens/sign_up_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/button_widget.dart';
import 'package:travel_app/widget/check_account_widget.dart';

class ChooseSignInScreen extends StatefulWidget {
  const ChooseSignInScreen({super.key});

  @override
  State<ChooseSignInScreen> createState() => _ChooseSignInScreenState();
}

class _ChooseSignInScreenState extends State<ChooseSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 48),
              const Text(
                "Choose your",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const Text(
                "Sign in",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              const Text(
                "Select login method",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(height: 75.5),
              const CheckAccountWidget(
                  image: Assets.tFacebookIcon, title: "Facebook"),
              const SizedBox(height: 12),
              const CheckAccountWidget(
                  image: Assets.tGoogleIcon, title: "Google"),
              const SizedBox(height: 12),
              const CheckAccountWidget(
                  image: Assets.tAppleIcon, title: "Apple"),
              const SizedBox(height: 75.5),
              ButtonWidget(
                text: "Next",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
