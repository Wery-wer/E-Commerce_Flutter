import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_splash.png'),
          ),
        ),
      )),
    );
  }
}
