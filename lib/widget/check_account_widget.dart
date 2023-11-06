import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../entity/account_entity.dart';

class CheckAccountWidget extends StatelessWidget {
  const CheckAccountWidget(
      {Key? key, required this.isSelect, required this.entity})
      : super(key: key);

  final AccountEntity entity;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      width: 326,
      decoration: BoxDecoration(
        color: isSelect
            ? const Color(0xff3772FF).withOpacity(0.1)
            : const Color(0xffE6E8EC).withOpacity(0.6),
        borderRadius: BorderRadius.circular(100),
        border: isSelect
            ? Border.all(width: 1, color: const Color(0xff1F41F4))
            : Border.all(width: 1, color: const Color(0xffF4F5F6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Row(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelect
                      ? const Color(0xff1F41F4)
                      : const Color(0xffB1B5C3).withOpacity(0.3),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    entity.icon,
                    fit: BoxFit.cover,
                    color: isSelect ? Colors.white : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              isSelect
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Use",
                          style: TextStyle(
                            color: Color(0xff1F41F4),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          entity.title,
                          style: TextStyle(
                            color: isSelect
                                ? const Color(0xff1F41F4)
                                : Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          entity.title,
                          style: TextStyle(
                            color: isSelect
                                ? const Color(0xff1F41F4)
                                : Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
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
                      ? const Color(0xff3772FF).withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Center(
                  child: Container(
                    height: 24,
                    width: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: isSelect
                            ? const Color(0xff1F41F4)
                            : const Color(0xffB1B5C3),
                      ),
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
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
