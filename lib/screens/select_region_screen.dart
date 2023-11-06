import 'package:flutter/material.dart';
import 'package:travel_app/screens/start_select_region_screen.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/button_widget.dart';

class SelectRegionScreen extends StatefulWidget {
  const SelectRegionScreen({Key? key}) : super(key: key);

  @override
  State<SelectRegionScreen> createState() => _SelectRegionScreenState();
}

class _SelectRegionScreenState extends State<SelectRegionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 48),
              const Text(
                "Select!",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const Text(
                "Region",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_rounded)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 37),
              ButtonWidget(text: "Asia", width: 65, height: 36, onTap: () {}),
              const SizedBox(height: 42),
              Expanded(
                  child: Stack(
                children: [
                  Image.asset(
                    fit: BoxFit.cover,
                    Assets.tSferaImage,
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  Positioned(
                      right: 95,
                      bottom: 120,
                      child: SizedBox(
                        height: 56,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StartSelectRegionScreen(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              backgroundColor: const Color(0xff1F41F4)),
                          child: const Center(
                            child: Text(
                              "Select now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 353,
                    left: 162.5,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Later",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
