import 'package:flutter/material.dart';
import 'package:shamo_apps/themes/themes.dart';
import 'package:shamo_apps/widgets/wishlist_card.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWhistlst(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              SizedBox(height: 23,),
              Text(
                'You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 12,),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle.copyWith(),
              ),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
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
    
    Widget content(){
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        )
      );
    }

    return Column(
      children: [
        header(),
        // emptyWhistlst()
        content()
      ],
    );
  }
}