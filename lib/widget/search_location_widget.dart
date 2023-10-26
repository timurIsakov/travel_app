import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/assets.dart';

class SearchLocationWidget extends StatelessWidget {
  const SearchLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 80,
      width: 267,
      decoration: BoxDecoration(
        color: const Color(0xff1F41F4),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                  color: Color(0xff3772ffb2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(Assets.tLocationIcon),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Search in",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.5)),
                      ),

                      Row(
                        children: [
                          const Text(
                            "Location",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.white54,
                            borderRadius: BorderRadius.circular(100),
                            child: Ink(
                              height: 24,
                              width: 24,
                              child: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff3772ffb2),
                ),
                child: Center(
                  child: SvgPicture.asset(Assets.tSearchIcon),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
