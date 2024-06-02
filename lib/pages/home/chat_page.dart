import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(child: Text('ChatPage',style: primaryTextStyle,)),
    );
  }
}