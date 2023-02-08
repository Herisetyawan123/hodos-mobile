import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyTheme.container(
        content: const Text("profile"),
      ),
    );
  }
}
