import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/search_button.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchWidget(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/shopping-cart.svg", 
             
            press: () { },),

        IconBtnWithCounter(
            svgSrc: "assets/icons/bell.svg", 
            numOfItems: 3,
            press: () { },),
        
        ],
      ),
    );
  }
}
