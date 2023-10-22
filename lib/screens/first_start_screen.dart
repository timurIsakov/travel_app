import 'package:flutter/material.dart';
import 'package:travel_app/screens/second_start_screen.dart';
import 'package:travel_app/screens/sign_in_screen.dart';
import 'package:travel_app/screens/third_start_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/circle_button_widget.dart';

import '../widget/swape_widget.dart';

class FirstStartScreen extends StatefulWidget {
  const FirstStartScreen({Key? key}) : super(key: key);

  @override
  State<FirstStartScreen> createState() => _FirstStartScreenState();
}

class _FirstStartScreenState extends State<FirstStartScreen> {

  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }





  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: PageView(
        controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          pageSnapping: true,
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    const Color(0xffFFBD80).withOpacity(0.5)
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                  image: const DecorationImage(
                      image: AssetImage(Assets.tOrangeBackImage),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  const SizedBox(height: 141),
                  const Text(
                    "Exploler\nthe world",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 48, fontWeight: FontWeight.w700, height: 1.3),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Let’s start here!",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const SizedBox(height: 50),
                  CircleButtonWidget(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SecondStartScreen()));

                      pageController.nextPage(duration: const Duration(milliseconds: 300),curve: Curves.linear);
                    },
                    color: Colors.deepOrange,
                    icon: Icons.arrow_forward,
                  ),
                  const SizedBox(height: 330),
                  const SwapeWidget(current: 0, total: 3),
                ],
              ),
            ),
              SecondStartScreen(onTap: () {
              pageController.nextPage(duration: const Duration(milliseconds: 300),curve: Curves.linear);

            },),
              ThirdStartScreen(
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));


              },
            )
          ]),
    );
  }

}

