import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/home/chat_page.dart';
import 'package:shamo_apps/pages/home/home_page.dart';
import 'package:shamo_apps/pages/home/profile_page.dart';
import 'package:shamo_apps/pages/home/whishlist_page.dart';
import 'package:shamo_apps/themes/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    
    Widget cardButton(){
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top:Radius.circular(24)
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          currentIndex: currentIndex,
          onTap: (value){
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(margin: EdgeInsets.only(top:20),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 20,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(margin: EdgeInsets.only(top:20),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(margin: EdgeInsets.only(top:20),
                child: Image.asset(
                  'assets/icon_whistlist.png',
                  width: 20,
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(margin: EdgeInsets.only(top:20),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 18,
                  color: currentIndex == 3 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: '',
            ),
          ]
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WhistlistPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body()
    );
  }
}