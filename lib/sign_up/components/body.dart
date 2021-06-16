import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/components/social_cards.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/sign_up/components/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(
                  height: SizeConfig.screenHeight * 0.02), 
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.07), //7% of total height
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                "By continuing you  are confirming  that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
