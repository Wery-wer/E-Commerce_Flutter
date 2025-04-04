import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor4
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage('assets/image_shoes.png')
              )
            ),
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis
                ),
                Text(
                  '\$143,98',
                  style: priceTextStyle.copyWith(
                      fontWeight: medium
                  ),
                )
              ],
            ),
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
