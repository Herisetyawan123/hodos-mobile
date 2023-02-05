import 'package:flutter/material.dart';
import 'package:hodos/src/pages/main/widgets/btn_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BtnMenu(),
      ],
    );
  }
}
