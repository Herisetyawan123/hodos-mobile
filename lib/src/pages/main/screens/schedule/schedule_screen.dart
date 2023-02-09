import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/main/screens/widget/floating_btn.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Schedule",
          style: MyTheme.heading3.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            DatePicker(
              DateTime.parse("2023-02-06"),
              initialSelectedDate: DateTime.now(),
              selectionColor: MyTheme.primary.purple,
              selectedTextColor: Colors.white,
              locale: 'id_ID',
            )
          ],
        ),
      ),
      floatingActionButton: const FloatingBtn(),
    );
  }
}
