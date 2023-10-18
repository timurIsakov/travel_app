import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/assets.dart';

class UserAccountWidget extends StatelessWidget {
  const UserAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 358,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color(0xffE6E8EC)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.tMenuIcon),
              ),
              Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const Icon(Icons.person)),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Samms",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(width: 20),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(Assets.tBellIcon)),
              Container(
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(Assets.tNumberThreeIcon),
              )
            ],
          ),
        ),
      ),
    );
  }
}
