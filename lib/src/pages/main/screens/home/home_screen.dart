import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/main/widgets/btn_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BtnMenu(),
        MyTheme.spaceH(25),
        Text(
          "Sugeng Dalu, Heri!",
          style: MyTheme.heading1.copyWith(
            fontWeight: FontWeight.bold,
            color: MyTheme.primary.blue,
          ),
        ),
        MyTheme.spaceH(8),
        Text(
          "Sampean dinten niki gadah 3 tugas",
          style: MyTheme.heading5.copyWith(
            fontWeight: FontWeight.w500,
            color: MyTheme.sec,
          ),
        ),
        MyTheme.spaceH(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Category",
              style: MyTheme.heading4.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "See all >>",
              style: MyTheme.heading5.copyWith(
                  fontWeight: FontWeight.w600, color: MyTheme.primary.blue),
            ),
          ],
        ),
        MyTheme.spaceH(20),
        CarouselSlider(
          disableGesture: true,
          items: [1, 2, 3, 4].map((e) {
            return Builder(
              builder: (BuildContext context) {
                return const BoxCategory();
              },
            );
          }).toList(),
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 180,
            padEnds: false,
            enlargeCenterPage: false,
            disableCenter: true,
            // viewportFraction: 16 ,
          ),
        ),
        MyTheme.spaceH(20),
        Text(
          "Jadwal dinten niki",
          style: MyTheme.heading4.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        MyTheme.spaceH(20),
        const BoxTask(),
        const BoxTask(),
        const BoxTask(),
        // const BoxTask()
      ],
    );
  }
}

class BoxTask extends StatelessWidget {
  const BoxTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        15,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(1, 1),
            blurRadius: 50,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kickoff meeting project",
            style: MyTheme.heading5.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          MyTheme.spaceH(5),
          Text(
            "06:00 - 08:00 AM",
            style: MyTheme.heading5.copyWith(
              fontWeight: FontWeight.w400,
              color: MyTheme.sec,
            ),
          ),
        ],
      ),
    );
  }
}

class BoxCategory extends StatelessWidget {
  const BoxCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 140,
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            12,
          ),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromRGBO(0, 0, 0, 0.25),
        //     blurRadius: 50,
        //     offset: Offset(
        //       1,
        //       1,
        //     ),
        //   )
        // ],
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  12,
                ),
              ),
              image: DecorationImage(
                image: AssetImage("assets/category/img-5.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Frontend website",
                  style: MyTheme.heading4.copyWith(
                    color: MyTheme.primary.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyTheme.spaceH(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Frontend website",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: MyTheme.sec,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "20 feb 2023",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: MyTheme.sec,
                        fontWeight: FontWeight.w300,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                MyTheme.spaceH(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: MyTheme.primary.blue,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Text(
                        "8/9",
                        style: MyTheme.heading5.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "8 days left",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: MyTheme.sec,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
