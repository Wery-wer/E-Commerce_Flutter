import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/home/detail_chat_page.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/sign_in_pages.dart';
import 'package:shamo_apps/pages/sign_up_pages.dart';
import 'package:shamo_apps/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
