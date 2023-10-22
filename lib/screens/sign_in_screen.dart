import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/choose_sign_in_screen.dart';
import 'package:travel_app/screens/sign_up_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/button_widget.dart';
import 'package:travel_app/widget/input_data_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  SizedBox(
                    height: 41,
                    width: 110,
                    child: SvgPicture.asset(Assets.tTraveeIcon),
                  ),
                  const SizedBox(height: 56.67),
                  const Text(
                    "Welcome!",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Please fill your information's",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(height: 56.67),
                  InputDataWidget(
                    typeKeybord: TextInputType.emailAddress,
                    bottomRadius: 8,
                    topRadius: 20,
                    labelText: "Email",
                    rightIcon: Icons.keyboard_arrow_down_outlined,
                    onPressedIcon: () {},
                  ),
                  const SizedBox(height: 4),
                  InputDataWidget(
                    typeKeybord: TextInputType.visiblePassword,
                    bottomRadius: 20,
                    topRadius: 8,
                    onPressedIcon: () {},
                    rightIcon: Icons.lock,
                    labelText: "Password",
                  ),
                  const SizedBox(height: 56.67),
                  ButtonWidget(
                      text: "Sign in now",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChooseSignInScreen(),
                            ));
                      }),
                  const SizedBox(height: 16),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ));
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
