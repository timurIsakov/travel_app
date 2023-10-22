import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:travel_app/screens/verify_email_screen.dart';
import 'package:travel_app/widget/input_data_widget.dart';

import '../widget/button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 48),
                const Text(
                  "Welcome!",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                const Text(
                  "Sign in",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
                const Text(
                  "Please fill your informations",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const SizedBox(height: 37.5),
                const InputDataWidget(
                    topRadius: 20,
                    bottomRadius: 8,
                    labelText: "Email",
                    rightIcon: Icons.keyboard_arrow_down,
                    typeKeybord: TextInputType.emailAddress),
                const SizedBox(height: 4),
                const InputDataWidget(
                    topRadius: 16,
                    bottomRadius: 16,
                    labelText: "Password",
                    rightIcon: Icons.lock,
                    typeKeybord: TextInputType.visiblePassword),
                const SizedBox(height: 4),
                const InputDataWidget(
                    topRadius: 16,
                    bottomRadius: 16,
                    labelText: "First name",
                    rightIcon: Icons.person,
                    typeKeybord: TextInputType.name),
                const SizedBox(height: 4),
                InputDataWidget(
                  typeKeybord: TextInputType.name,
                  bottomRadius: 20,
                  topRadius: 8,
                  onPressedIcon: () {},
                  rightIcon: Icons.person,
                  labelText: "Last name",
                ),
                const SizedBox(height: 37.5),
                ButtonWidget(
                  text: "Done",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerifyEmailScreen(),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
