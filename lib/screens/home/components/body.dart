import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6,
                    // height: 50,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Product",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenHeight(20),
                            vertical: getProportionateScreenWidth(9),
                          )),
                    ),
                  ),
                  Stack(
                   // overflow: Overflow.visible,
                   clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(12)),
                        height: getProportionateScreenHeight(46),
                        width: getProportionateScreenWidth(46),
                        decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.notifications),
                      ),

                      Positioned(
                        top: -3,
                        right: 0,
                        child: Container(
                          height: getProportionateScreenHeight(16),
                          width: getProportionateScreenWidth(16),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            border: Border.all(width: 1.5, color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: getProportionateScreenWidth(10),
                              height: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
