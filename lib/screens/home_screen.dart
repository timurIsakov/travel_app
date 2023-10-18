import 'package:flutter/material.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/custom_button_widget.dart';
import 'package:travel_app/widget/user_account_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const UserAccountWidget(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 16, bottom: 32),
                  child: SizedBox(
                    width: 424,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.person)),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Post in",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff353945)),
                                ),
                                Text(
                                  "American",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff141416)),
                                ),
                              ],
                            ),
                            const SizedBox(width: 150),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE6E8EC)),
                              child: const Icon(Icons.arrow_forward_rounded),
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        Container(
                          height: 200,
                          width: 334,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Image.asset(Assets.tHomeImage),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 161,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffDAFEE4)),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text("Save"),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 161,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffE6E8EC)),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text("Comment"),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xffE6E8EC))),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.person),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Post in",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff353945)),
                                ),
                                Text(
                                  "American",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff141416)),
                                ),
                              ],
                            ),
                            const SizedBox(width: 150),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE6E8EC)),
                              child: const Icon(Icons.arrow_forward_rounded),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 120,
                          width: 390,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Color(0xffDAFEE4), Colors.white])),
                          child: const Center(
                            child: Column(
                              children: [
                                SizedBox(height: 30),
                                CustomButtonWidget(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
