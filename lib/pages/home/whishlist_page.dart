import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(child: Text('WhishlistPage',style: primaryTextStyle,)),
    );
  }
}