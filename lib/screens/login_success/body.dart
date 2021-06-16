import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizedBox(
      height: SizeConfig.screenHeight * 0.04,
    );
    return Column(
      children: [
        Image.asset(
          "assets/images/success.jpg",
          height: SizeConfig.screenHeight * 0.41,
          width: SizeConfig.screenWidth * 1.6,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () => Navigator.pushNamed(context, Home.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
