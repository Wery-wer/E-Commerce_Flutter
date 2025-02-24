import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 12),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/image_shoes.png')
                  )
                ),
              ),              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
              ) ,
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  ),
                  SizedBox(height: 2,),
                  Image.asset(
                    'assets/button_min.png',
                    width: 16,
                  )
                ],
              ),            
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Image.asset(
                'assets/button_remove.png',
                width: 10,
              ),
              SizedBox(width: 4,),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}