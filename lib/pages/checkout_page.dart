import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';
import 'package:shamo_apps/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header(){
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        'Checkout Details',
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

  Widget content (){
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // LIST ITEMS
          Container(
            margin: EdgeInsets.only(
              top : defaultMargin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                CheckoutCard(),
              ],
            ),
          ),

          // ADDRESS DETAILS

          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor4
            ),
          )
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
