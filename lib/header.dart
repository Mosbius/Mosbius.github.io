import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart' ;

import 'package:profile_page/coolers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([if(context.isMobile)50.heightBox else 10.heightBox,
                CustomAppBar().shimmer(
                  primaryColor: Coolers.accentColor,
                ),
                30.heightBox,
                "Kaushik\nAadhithya\nChiratangandla"
                    .text
                    .white
                    .xl4
                    .lineHeight(1)
                    .size(context.isMobile ? 15 : 20)
                    .bold
                    .make()
                    .shimmer(),
                20.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                30.heightBox,
                SocialAccounts()
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                  child:VxResponsive(
    fallback: const Offstage(),
    large: IntroductionWidget().pOnly(left: 300).h(context.percentHeight*60),
    )
              )]
    ).w(context.screenWidth)
        ]
    )]
    )).size(context.screenWidth, context.percentHeight*60).make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return VStack([[
      "-Introduction".text.black.widest.sm.make(),
      10.heightBox,
      "Android App Developer\n AI/ML Developer"
          .text
          .black
          .xl3
          .maxLines(5)
          .make()
          .w(context.isMobile
          ?context.screenWidth
          :context.percentWidth*40),
      20.heightBox,
    ].vStack(),
    ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}



class PictureWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      child: Image.asset(
        "assets/kk (1).jpg",
        fit: BoxFit.fill,
      ),
      transform: Matrix4.rotationY(pi),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.linkedin_square,
        color: Colors.black,
      ).mdClick(() {
        launch(
            "https://www.linkedin.com/in/kaushik-aadhithya-chiratanagandla-b71221219/");
      }).make(),
      Icon(AntDesign.github, color: Colors.black).mdClick(() {
        launch("https://github.com/Kaushik-Aadhithya-Ch");
      }).make()
    ].hStack();
  }
}
