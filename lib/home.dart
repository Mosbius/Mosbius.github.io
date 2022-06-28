import 'package:flutter/material.dart';
import 'package:profile_page/coolers.dart';
import 'package:velocity_x/velocity_x.dart';

import 'footer.dart';
import 'header.dart';
import 'middle.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child:VStack([
        HeaderScreen(),
        if(context.isMobile)
          IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen()


      ]).scrollVertical() ,
    );
  }
}
