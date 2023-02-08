import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';

import '../widget/floating_btn.dart';

class TaskScreens extends StatelessWidget {
  const TaskScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyTheme.container(
        content: const Text("Task"),
      ),
      floatingActionButton: const FloatingBtn(),
    );
  }
}
