import 'package:flutter/material.dart';

import '../screens/select_region_screen.dart';
import '../widget/button_widget.dart';
import 'assets.dart';

class Dialogs {
  static Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.only(right: 8, left: 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                  onTap: () async {
                    Navigator.pop(context);
                    await Dialogs.bottomSheet(context);
                  })
            ],
          ),
        );
      },
    );
  }

  static Future<void> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      isDismissible: false,
      isScrollControlled: false,
      constraints: const BoxConstraints(minHeight: 520, maxHeight: 520),
      context: context,
      builder: (context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Row(
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            const SizedBox(height: 25),
            ButtonWidget(
                width: 326,
                text: "Done",
                color: const Color(0xff24B24C),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectRegionScreen(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
