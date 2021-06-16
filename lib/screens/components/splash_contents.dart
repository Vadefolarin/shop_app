import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';


class SplachContent extends StatelessWidget {
  const SplachContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Spacer(flex: 2,),
              Text(
                'XPLUR',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(text,textAlign: TextAlign.center,),
              Spacer(
                flex: 2,
              ),
              Image.asset(
                image,
                height: getProportionateScreenHeight(350),
                width: getProportionateScreenWidth(390),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
