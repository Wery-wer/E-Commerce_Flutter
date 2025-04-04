import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/checkout_page.dart';
import 'package:shamo_apps/pages/checkout_success_page.dart';
import 'package:shamo_apps/pages/detail_chat_page.dart';
import 'package:shamo_apps/pages/edit_profile_page.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/product_page.dart';
import 'package:shamo_apps/pages/sign_in_pages.dart';
import 'package:shamo_apps/pages/sign_up_pages.dart';
import 'package:shamo_apps/pages/splash_page.dart';
import 'package:shamo_apps/pages/card_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage(),
      },
    );
  }
}
