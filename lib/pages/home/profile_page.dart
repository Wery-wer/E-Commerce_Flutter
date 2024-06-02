import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(child: Text('ProfilePage',style: primaryTextStyle,)),
    );
  }
}