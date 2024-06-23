import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamo_apps/themes/themes.dart';
import 'package:shamo_apps/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});
  @override
  Widget build(BuildContext context) {

    PreferredSize header(){
      return PreferredSize(
        preferredSize: Size.fromHeight(70), 
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Image.asset(
                  'assets/arrow_back.png',
                  width: 10,
                  color: primaryTextColor,
                ),
                onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
                width: 50,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      );
    }

    Widget productPreview(){
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding : EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/image_shoes.png',
                width: 54,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COURT VISIO...',
                    style: primaryTextStyle.copyWith(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '\$57.15',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/button_close.png',
              width: 22,
            ),
          ],
        ),
      );
    }

    Widget chatInput(){
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 45,
                    decoration: BoxDecoration(
                      color: backgroundColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/button_send.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatBubble(isSender: true,
            text: 'Hi, This item is still available?',
            hasProcut: true,
          ),
          ChatBubble(isSender: false,
            text: 'Good night, This item is only available in size 42 and 43',
            
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}