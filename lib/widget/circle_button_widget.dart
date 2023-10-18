import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {

  final Color color;
  final IconData icon;
  final VoidCallback? onTap;

  const CircleButtonWidget({Key? key, required this.color, required this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        onTap?.call();
      },
      splashColor: Colors.blueGrey,
      child: Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}