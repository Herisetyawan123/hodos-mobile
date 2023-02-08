import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/main/screens/widget/floating_btn.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyTheme.container(
        content: const Text("schedule"),
      ),
      floatingActionButton: const FloatingBtn(),
    );
  }
}
