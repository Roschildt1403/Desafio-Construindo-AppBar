import 'package:charrasco_compartilhado/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFlutterFire() async {
    // try {
    //   await Firebase.initializeApp();
    //   await Future.delayed(Duration(seconds: 2));
    //   Navigator.pushReplacementNamed(context, "/login");
    // } catch (e) {
    //   Navigator.pushReplacementNamed(context, "/error");
    // }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 100),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppTheme.gradient.background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Rectangle 22.png"),
                    SizedBox(
                      height: 24,
                    ),
                    Image.asset("assets/images/Rectangle 22 (1).png")
                  ],
                ),
              ],
            ),
            Center(child: Image.asset("assets/images/Logo.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Rectangle 22 (2).png"),
                    SizedBox(
                      height: 24,
                    ),
                    Image.asset("assets/images/Rectangle 22 (3).png")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
