import 'package:flutter/material.dart';
import 'package:hodos/src/pages/main/screens/home/home_screen.dart';
import 'package:hodos/src/pages/main/screens/profile/profile_screen.dart';
import 'package:hodos/src/pages/main/screens/schedule/schedule_screen.dart';
import 'package:hodos/src/pages/main/screens/tasks/task_screen.dart';

import '../../constants/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

  List<Widget> pages = const [
    HomeScreen(),
    TaskScreen(),
    ScheduleScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[number],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: number,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: (value) {
          setState(() {
            number = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home_rounded,
            ),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.task_rounded,
            ),
            icon: Icon(
              Icons.task_outlined,
            ),
            label: "Task",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.calendar_month_rounded,
            ),
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_rounded,
            ),
            icon: Icon(
              Icons.person_outlined,
            ),
            label: "My Self",
          )
        ],
      ),
    );
  }
}
