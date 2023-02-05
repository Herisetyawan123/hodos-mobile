import 'package:flutter/material.dart';
import 'package:hodos/src/pages/auth/signup.dart';

import '../pages/auth/landing.dart';
import '../pages/auth/signin.dart';
import '../pages/main/app.dart';

class MyRoute {
  MyRoute._();

  static const splash = "/";
  static const signin = "/signin";
  static const signup = "/signup";
  static const home = "/home";

  static final data = <String, WidgetBuilder>{
    splash: (_) => const LandingPage(),
    signin: (_) => const SignInPage(),
    signup: (_) => const SignUpPage(),
    home: (_) => const MainPage(),
  };
}
