import 'package:flutter/material.dart';

import '../screens/successfully_email_screen.dart';
import '../widget/button_widget.dart';
import 'assets.dart';

class Dialogs {
  static Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          constraints: const BoxConstraints(
            minHeight: 520,
            minWidth: 374
          ),
          child: AlertDialog(
            alignment: Alignment.bottomCenter,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE6E8EC),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ),
                  ],
                ),
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
                const SizedBox(height: 48),
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
        );
      },
    );
  }
}
