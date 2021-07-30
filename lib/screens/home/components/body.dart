import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_Header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/flash.svg", "text": "Flash deal"},
      {"icon": "assets/icons/invoice.svg", "text": "Bill"},
      {"icon": "assets/icons/console.svg", "text": "game"},
      {"icon": "assets/icons/gift-box.svg", "text": "Daily gift"},
      {"icon": "assets/icons/discover.svg", "text": "Discover"},
    ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
