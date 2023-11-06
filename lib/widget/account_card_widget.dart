import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/assets.dart';

class AccountCardWidget extends StatelessWidget {
  final Color? color;
  final Gradient? gradient;
  final String image;
  final String name;
  const AccountCardWidget(
      {Key? key,
      this.color,
      this.gradient,
      required this.image,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 96,
      width: 358,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: color ?? const Color(0xffE6E8EC),
        gradient: gradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                borderRadius: BorderRadius.circular(100),
                child: Ink(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(Assets.tMenuIcon),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 16),
                child: Container(
                  height: 40,
                  width: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () => (),
                borderRadius: BorderRadius.circular(100),
                splashColor: Colors.grey,
                child: Ink(
                  height: 20,
                  width: 20,
                  child: Center(child: SvgPicture.asset(Assets.tBellIcon)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 24,
                  width: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child:
                      Center(child: SvgPicture.asset(Assets.tNumberThreeIcon)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
