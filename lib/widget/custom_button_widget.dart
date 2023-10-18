import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonWidget extends StatelessWidget {
  final String? icon;
  const CustomButtonWidget({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 267,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff1F41F4)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 16),
            Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff3772ffb2)),
              child: icon != null
                  ? SvgPicture.asset(icon!)
                  : const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
            ),
            const SizedBox(width: 16),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Search in",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12)),
                Row(
                  children: [
                    Text("Location",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff3772FFB2),
              ),
              child: const Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
