import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';
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
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: AspectRatio(aspectRatio:1,
      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xFFFFECDF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(categories[0]["icon"]),
      ),),
    );
  }
}
