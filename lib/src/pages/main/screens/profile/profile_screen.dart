import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/main/screens/profile/widget/img_profile.dart';

import 'widget/box_profile.dart';
import 'widget/tile_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: MyTheme.bg,
          child: MyTheme.container(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTheme.spaceH(50),
                const ImgProfile(
                  src:
                      "https://images.unsplash.com/photo-1553356084-58ef4a67b2a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                ),
                MyTheme.spaceH(30),
                Text(
                  "Heri Setyawan",
                  style: MyTheme.heading1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Status : ",
                      style: MyTheme.heading3.copyWith(
                        color: MyTheme.sec,
                      ),
                    ),
                    Text(
                      "Programmer",
                      style: MyTheme.heading3.copyWith(
                        fontWeight: FontWeight.w600,
                        color: MyTheme.primary.green,
                      ),
                    )
                  ],
                ),
                MyTheme.spaceH(30),
                BoxProfile(
                  width: width,
                  child: Column(
                    children: [
                      const TileProfile(
                        title: "Email",
                        value: "herisetyawan233@gmail.com",
                      ),
                      Divider(
                        color: MyTheme.sec,
                      ),
                      const TileProfile(
                        title: "Date of birth",
                        value: "05 sep 2001",
                      ),
                      Divider(
                        color: MyTheme.sec,
                      ),
                      const TileProfile(
                        title: "Gender",
                        value: "male",
                      ),
                    ],
                  ),
                ),
                MyTheme.spaceH(30),
                BoxProfile(
                  width: width,
                  child: Column(
                    children: [
                      const TileProfileTwo(),
                      MyTheme.spaceH(20),
                      const TileProfileTwo(),
                      MyTheme.spaceH(20),
                      const TileProfileTwo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TileProfileTwo extends StatelessWidget {
  const TileProfileTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyTheme.secondary.purple,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      color: MyTheme.primary.purple,
                    ),
                  ),
                ),
                MyTheme.spaceW(10),
                Text(
                  "Settings",
                  style: MyTheme.heading4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: MyTheme.sec,
            )
          ],
        ),
      ),
    );
  }
}
