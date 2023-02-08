import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/auth/widget/btn_back.dart';
import 'package:hodos/src/pages/auth/widget/btn_primary.dart';
import 'package:hodos/src/pages/auth/widget/input_widget.dart';

import 'widget/link_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                    placeholder: "Jenenge sampeyan",
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
                  const InputWidget(
                    placeholder: "Delik delikan sampeyan",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BtnPrimary(
                    text: "Sampun?",
                    handleTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Sampun gadah akun  ?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  LinkText(
                    text: "Mlebu",
                    handleTap: () => Navigator.pop(context),
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
