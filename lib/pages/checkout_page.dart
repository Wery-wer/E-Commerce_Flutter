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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icon_your_addres.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium
                          ),
                        ),
                        SizedBox(height: defaultMargin,),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          // Payment Summary

          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      '2 Items',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12
                      ),
                    ),
                    Text(
                      '\$575.96',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12
                      ),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 11,),
                Divider(
                  thickness: 1,
                  color: Color(0xFF2E3141),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold
                      ),
                    ),
                    Text(
                      '\$575.96',
                      style: priceTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Divider(
            thickness: 1,
            color: Color(0xff2B2938),
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
                onPressed: (){}, 
                child: Text(
                  'Checkout Now',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                  ),
                )
            ),
          ),
          SizedBox(height: 30,),
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
