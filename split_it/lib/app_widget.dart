import 'package:charrasco_compartilhado/modules/error/error_page.dart';
import 'package:charrasco_compartilhado/modules/home/home_page.dart';
import 'package:charrasco_compartilhado/modules/login/login_page.dart';
import 'package:charrasco_compartilhado/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Split.it",
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/error": (context) => ErrorPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
