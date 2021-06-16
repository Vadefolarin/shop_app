import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'otp_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("OTP verification", style: headingStyle),
              Text("we sent your code to +234 706 075 7 **"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.2), //10 %
              GestureDetector(
                onTap: () {},
                // resend YOur OTP
                  child: Text(
                "Resend OTP code",
                style: TextStyle(decoration: TextDecoration.underline),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code willl expire in "),

        // Animation for countdown for 30 seconds
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
