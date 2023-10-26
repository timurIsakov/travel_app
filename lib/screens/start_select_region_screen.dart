import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/post_main_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/account_card_widget.dart';
import 'package:travel_app/widget/search_location_widget.dart';

class StartSelectRegionScreen extends StatefulWidget {
  const StartSelectRegionScreen({super.key});

  @override
  State<StartSelectRegionScreen> createState() =>
      _StartSelectRegionScreenState();
}

class _StartSelectRegionScreenState extends State<StartSelectRegionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(Assets.tBackGradientGreen)),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(Assets.tBackGradientBlue)),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  AccountCardWidget(
                    image: Assets.tHomeImage,
                    name: 'Samms',
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xffE6E8EC),
                        const Color(0xffE6E8EC).withOpacity(0.4)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  const SizedBox(height: 64),
                  SizedBox(
                    height: 152,
                    width: 152,
                    child: SvgPicture.asset(Assets.tLocationImage),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Search around",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  const Text(
                    "Search around",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PostMainScreen(),));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE6E8EC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      child: const Text(
                        "Skip",
                        style: TextStyle(color: Colors.black),
                      )),
                  const SizedBox(height: 16),
                  SvgPicture.asset(Assets.tArrowSnakeImage),
                  const SizedBox(height: 24),
                  const SearchLocationWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
