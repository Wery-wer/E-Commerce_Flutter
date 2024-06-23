import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';
import 'package:shamo_apps/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(height: 20,),
              Text(
                'Opss no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: (){

                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24, 
                      vertical: 10
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget emptyChat(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child : ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              ChatTile()
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        emptyChat()
      ],
    );
  }
}