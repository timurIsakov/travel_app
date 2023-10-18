import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String text;
  final VoidCallback onTap;

  const ButtonWidget(
      {Key? key,
      this.height,
      this.width,
      this.color,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ?? 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Material(
          borderRadius: BorderRadius.circular(100),
          color: color ?? const Color(0xff1F41F4),
          child: InkResponse(
            onTap: () {
              onTap.call();
            },
            splashColor: Colors.white38,
            radius: 100,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
