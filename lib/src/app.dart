import 'package:flutter/material.dart';
import 'package:hodos/src/constants/routes.dart';
import 'package:hodos/src/constants/theme.dart';
import 'package:hodos/src/pages/auth/landing.dart';
import 'package:hodos/src/pages/auth/signin.dart';
import 'package:hodos/src/pages/auth/signup.dart';

class MyHodos extends StatelessWidget {
  const MyHodos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: MyRoute.splash,
      routes: MyRoute.data,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
