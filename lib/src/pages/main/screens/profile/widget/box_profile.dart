import 'package:flutter/material.dart';

class BoxProfile extends StatelessWidget {
  const BoxProfile({
    Key? key,
    required this.width,
    required this.child,
  }) : super(key: key);

  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(
        20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.25,
            ),
            offset: const Offset(5, 5),
            blurRadius: 100,
          )
        ],
      ),
      child: child,
    );
  }
}
