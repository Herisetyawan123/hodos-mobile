import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/auth/widget/btn_primary.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            MyTheme.primary.blue,
            Colors.white,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 45,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 280,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/landing.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            DefaultTextStyle(
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: Colors.black,
              ),
              child: const Text(
                "Sugeng Rawuh",
              ),
            ),
            DefaultTextStyle(
              style: MyTheme.text.blue.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              child: const Text(
                "Hodos",
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: DefaultTextStyle(
                style: MyTheme.text.textSecondary.copyWith(
                  fontSize: 14,
                ),
                child: const Text(
                  "Mugi mugi aplikasi niki bermanfaaat agawe sampeyan",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            BtnPrimary(
              text: "Monggo !",
              handleTap: () => Navigator.pushNamed(context, '/signin'),
            )
          ],
        ),
      ),
    );
  }
}
