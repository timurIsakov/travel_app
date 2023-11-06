import 'package:flutter/material.dart';
import 'package:travel_app/screens/sign_up_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/button_widget.dart';
import 'package:travel_app/widget/check_account_widget.dart';

import '../entity/account_entity.dart';

class ChooseSignInScreen extends StatefulWidget {
  const ChooseSignInScreen({super.key});

  @override
  State<ChooseSignInScreen> createState() => _ChooseSignInScreenState();
}

class _ChooseSignInScreenState extends State<ChooseSignInScreen> {
  List<AccountEntity> listOfAccount = [
    AccountEntity(icon: Assets.tFacebookIcon, title: "Facebook"),
    AccountEntity(icon: Assets.tGoogleIcon, title: "Google"),
    AccountEntity(icon: Assets.tAppleIcon, title: "Apple"),
  ];

  int currentIndex = 0;
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
              //
              ...List.generate(listOfAccount.length, (index) {
                final int localIndex = index;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = localIndex;
                      });
                    },
                    child: CheckAccountWidget(
                      isSelect: currentIndex == localIndex ? true : false,
                      entity: listOfAccount[index],
                    ),
                  ),
                );
              }),

              const SizedBox(height: 63),
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
