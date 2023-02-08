import 'package:flutter/material.dart';

class ImgProfile extends StatelessWidget {
  const ImgProfile({
    Key? key,
    required this.src,
  }) : super(key: key);
  final String src;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        "https://images.unsplash.com/photo-1553356084-58ef4a67b2a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        fit: BoxFit.fill,
        width: 150,
        height: 150,
      ),
    );
  }
}
