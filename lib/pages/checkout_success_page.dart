import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
      );
    }

    Widget content(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty.png',
              width: 80,
            ),
            SizedBox(height: 20,),
            Text(
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),
            ),
            SizedBox(height: 12,),
            Text(
              'Stay at home while we \n prepare your dream shoes',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Container(
              height: 45,
              width: 196,
              child: TextButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                  child: Text(
                    'Order Other Shoes',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  )
              ),
            ),
            SizedBox(height: 12,),
            Container(
              height: 45,
              width: 196,
              child: TextButton(
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/cart', (route) => false
                    );
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff39374B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                  child: Text(
                    'View My Order',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium
                    ),
                  )
              ),
            )
          ],
        ),
      );
    }










    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
