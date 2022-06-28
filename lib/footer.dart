import 'package:flutter/material.dart';
import 'package:profile_page/header.dart';
import 'package:velocity_x/velocity_x.dart';

import 'coolers.dart';
class FooterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(mobile:VStack([
        "Contact".text.center.white.xl2.make(),
        10.heightBox,
        "ckaushikaadhithya@gmail.com".text.white.semiBold.make().box.border(color: Coolers.accentColor).p16.rounded.make(),

      ],
      crossAlignment:CrossAxisAlignment.center,
      ),web: HStack([
        "Contact".text.center.white.xl2.make(),
        10.widthBox,
        "ckaushikaadhithya@gmail.com".text.white.semiBold.make().box.border(color: Coolers.accentColor).p16.rounded.make()
      ],
        alignment: MainAxisAlignment.spaceAround,

      ).w(context.safePercentWidth*70).scale100().p16()
        ,),
      50.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thank you for Scrolling".richText.semiBold.white.make()

    ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
