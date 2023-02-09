import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/main/screens/profile/widget/img_profile.dart';

import 'widget/box_profile.dart';
import 'widget/tile_content.dart';
import 'widget/tile_content_two.dart';

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
                headerSection(),
                centerSection(width),
                MyTheme.spaceH(30),
                endSection(width),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxProfile centerSection(double width) {
    return BoxProfile(
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
    );
  }

  BoxProfile endSection(double width) {
    return BoxProfile(
      width: width,
      child: Column(
        children: [
          TileProfileTwo(
            label: "Change Password",
            icon: Icons.lock,
            color: MyTheme.primary.orange,
            colorSec: MyTheme.secondary.orange,
          ),
          MyTheme.spaceH(20),
          TileProfileTwo(
            label: "Settings",
            icon: Icons.settings,
            color: MyTheme.primary.purple,
            colorSec: MyTheme.secondary.purple,
          ),
          MyTheme.spaceH(20),
          TileProfileTwo(
            label: "About Developer",
            icon: Icons.interests,
            color: MyTheme.primary.green,
            colorSec: MyTheme.secondary.green,
          ),
          // const TileProfileTwo(),
          // MyTheme.spaceH(20),
          // const TileProfileTwo(),
        ],
      ),
    );
  }

  Column headerSection() {
    return Column(
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
      ],
    );
  }
}
