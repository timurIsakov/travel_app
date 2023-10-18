import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/custom_button_widget.dart';

import '../widget/user_account_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.title});

  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const UserAccountWidget(),
                const SizedBox(height: 16),
                Container(
                  height: 495,
                  width: 358,
                  padding: const EdgeInsets.all(45),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 152,
                        width: 152,
                        child: SvgPicture.asset(Assets.tLocationImage),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Search around",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "the world",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 36,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xffE6E8EC)),
                        child: TextButton(
                            onPressed: () {}, child: const Text("Skip")),
                      ),
                      const SizedBox(height: 16),
                      // Container(
                      //   height: 80,
                      //   width: double.infinity,
                      //   color: Colors.white,
                      // )

                      SvgPicture.asset(
                        Assets.tSnakeArrowImage,
                        height: 80,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 48, right: 48, bottom: 48, top: 24),
                  child: CustomButtonWidget(
                    icon: Assets.tLocationIcon,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
