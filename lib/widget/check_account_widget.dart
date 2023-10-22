import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckAccountWidget extends StatefulWidget {
  const CheckAccountWidget({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  State<CheckAccountWidget> createState() => _CheckAccountWidgetState();
}

class _CheckAccountWidgetState extends State<CheckAccountWidget> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return isSelect
        ? GestureDetector(
            onTap: () {
              setState(() {
                isSelect = !isSelect;
              });
            },
            child: Container(
              height: 104,
              width: 326,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xff1F41F4)),
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(3772).withOpacity(0.1)),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff1F41F4)),
                        child: Center(
                          child: SvgPicture.asset(
                            widget.image,
                            fit: BoxFit.cover,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Use",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1F41F4)),
                          ),
                          Text(
                            widget.title,
                            style: const TextStyle(
                                color: Color(0xff1F41F4),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 56,
                        width: 56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelect
                                ? const Color(3772).withOpacity(0.1)
                                : Colors.transparent),
                        child: Center(
                          child: Container(
                            height: 24,
                            width: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: isSelect
                                      ? const Color(0xff1F41F4)
                                      : const Color(0xffB1B5C3)),
                            ),
                            child: Center(
                              child: Container(
                                height: 12,
                                width: 12,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isSelect
                                        ? const Color(0xff1F41F4)
                                        : Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                isSelect = !isSelect;
              });
            },
            child: Container(
              height: 104,
              width: 326,
              decoration: BoxDecoration(
                color: const Color(0xffE6E8EC).withOpacity(0.6),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: const Color(0xffF4F5F6)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle, color: const Color(0xffB1B5C3).withOpacity(0.3)),
                        child: Center(
                          child: SvgPicture.asset(
                            widget.image,
                            fit: BoxFit.cover,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 56,
                        width: 56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelect
                                ? const Color(3772).withOpacity(0.1)
                                : Colors.transparent),
                        child: Center(
                          child: Container(
                            height: 24,
                            width: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: isSelect
                                      ? const Color(0xff1F41F4)
                                      : const Color(0xffB1B5C3)),
                            ),
                            child: Center(
                              child: Container(
                                height: 12,
                                width: 12,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isSelect
                                        ? const Color(0xff1F41F4)
                                        : Colors.transparent),
                              ),
                            ),
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
