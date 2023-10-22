import 'package:flutter/material.dart';

class InputDataWidget extends StatelessWidget {
  final double topRadius;
  final double bottomRadius;
  final String labelText;
  final IconData rightIcon;
  final VoidCallback? onPressedIcon;
  final TextInputType typeKeybord;
  const InputDataWidget(
      {Key? key,
      required this.topRadius,
      required this.bottomRadius,
      required this.labelText,
      required this.rightIcon,
      this.onPressedIcon,
      required this.typeKeybord})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 326,
      decoration: BoxDecoration(
          color: const Color(0xffE6E8EC),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topRadius),
            topRight: Radius.circular(topRadius),
            bottomLeft: Radius.circular(bottomRadius),
            bottomRight: Radius.circular(bottomRadius),
          )),
      child: Center(
        child: SizedBox(
          height: 70,
          width: 278,
          child: TextFormField(
            obscureText:
                typeKeybord == TextInputType.visiblePassword ? true : false,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            cursorColor: Colors.black,
            keyboardType: typeKeybord,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              labelStyle: const TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                  onPressed: () {
                    onPressedIcon?.call();
                  },
                  icon: Icon(
                    rightIcon,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
