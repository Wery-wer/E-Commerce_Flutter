import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';
import 'package:shamo_apps/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
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
      );
    }
    
    Widget emptyCart(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon_empty.png', 
              width: 80,
            ),
            
            SizedBox(height: 20,),

            Text(
              'Opps! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),

            SizedBox(height: 20,),

            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium
              ),
            ),

            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false
                  );
                }, 
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )
              ),
            )
          ],
        )
      );
    }

    Widget content(){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          CartCard()
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}