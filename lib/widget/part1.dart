import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/animat_wdget.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:personal_omar/widget/social_mediaIcon.dart';

class Part1 extends StatelessWidget {
  Part1({super.key, required this.type});
  final int type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.15, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: type == 1
                ? 100
                : type == 0
                    ? 90
                    : 150,
            backgroundColor: bule2Color,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(190),
              child: Image.asset(
                "assets/images/me.png",
              ),
            ),
          ),
          SizedBox(
            height: type != 3 ? 25 : 30,
          ),
          CustomText(
            text: "Hi there, I'm Abdalhkim ",
            color: whiteTextColor,
            alignment: Alignment.center,
            size: type == 1
                ? 13
                : type == 1
                    ? 11
                    : 16,
          ),
          SizedBox(
            height: type != 3 ? 20 : 30,
          ),
          Container(
            alignment: Alignment.center,
            height: type != 3 ? 60 : 80,
            child: AnimatedTextKit(
              stopPauseOnTap: true,
              pause: const Duration(milliseconds: 800),
              animatedTexts: List<AnimatedText>.generate(textanmation.length,
                  (index) => buildText(textanmation[index])).toList(),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: type == 1 ? 20 : 30,
          ),
          CustomText(
            text:
                "I help people and brands reach their goals by designing & building",
            color: bule2Color,
            alignment: Alignment.center,
            size: type == 1
                ? 12
                : type == 0
                    ? 7
                    : 16,
          ),
          CustomText(
            text: "user-centric digital products and interactive experiences",
            color: bule2Color,
            alignment: Alignment.center,
            size: type == 1
                ? 12
                : type == 0
                    ? 7
                    : 16,
          ),
          SizedBox(
            height: type == 0 ? 40 : 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              kSocialIcons.length,
              (index) => WidgetAnimator(
                child: SocialMediaIconBtn(
                  icon: kSocialIcons[index],
                  socialLink: kSocialLinks[index],
                  height: 37,
                  horizontalPadding: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> kSocialIcons = [
    "assets/images/icons8-github-50.png",
    "assets/images/instagram.png",
    "assets/images/twitter.png",
    "assets/images/linkedin.png",
  ];

  final List<String> textanmation = [
    "Full Stack developer",
    "UX/UI Designer",
    "Front-end developer",
    "Back-end developer",
    "Flutter developer"
  ];

  final List<String> kSocialLinks = [
    "https://github.com/Abdalhkim-Albloushi",
    "https://instagram.com/7_milllion",
    "https://twitter.com/hkim_9",
    "https://www.linkedin.com/in/abdalhkim-ali-a829981b9",
  ];

  ScaleAnimatedText buildText(String text) => ScaleAnimatedText(text,
      duration: const Duration(seconds: 2),
      scalingFactor: 1,
      textStyle: TextStyle(
        fontFamily: "Montserratb",
        fontSize: type == 1
            ? 40
            : type == 0
                ? 25
                : 60,
        color: primaryColor,
        fontWeight: FontWeight.bold,
      ));
}
