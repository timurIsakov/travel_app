import 'package:flutter/material.dart';

class SwapeWidget extends StatelessWidget {
  final int total;
  final int current;
  const SwapeWidget({Key? key, required this.total, required this.current})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            total,
            (index) => index == current ? Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.grey)

                ),
                child: Center(
                  child: Container(
                    height: index == current ? 12 : 10,
                    width: index == current ? 12 : 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == current ? Colors.white : Colors.grey),
                  ),
                ),
              ),
            )
                : Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                    height: index == current ? 13 : 10,
                    width: index == current ? 13 : 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == current ? Colors.white : Colors.grey),
                  ),
            ),

        ),

      ],
    );
  }
}
