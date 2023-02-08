import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/constants/routes.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/auth/widget/btn_back.dart';
import 'package:hodos/src/pages/auth/widget/btn_primary.dart';
import 'package:hodos/src/pages/auth/widget/input_widget.dart';
import 'package:hodos/src/pages/auth/widget/link_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: MyTheme.container(
          // height: height,
          // width: width,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BtnBack(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 283,
                      height: 195,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/login.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  DefaultTextStyle(
                    style: MyTheme.text.blue.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    child: const Text("Monggo"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const InputWidget(
                    placeholder: "Email sampeyan",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const InputWidget(
                    placeholder: "Delik delikan sampeyan",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BtnPrimary(
                    text: "Mlebet",
                    handleTap: () {
                      Navigator.pop(context);
                      Navigator.pushReplacementNamed(
                        context,
                        MyRoute.home,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Sampeyan dereng damel akun ?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  LinkText(
                    text: "Daftar",
                    handleTap: () => Navigator.of(context).pushNamed(
                      MyRoute.signup,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
