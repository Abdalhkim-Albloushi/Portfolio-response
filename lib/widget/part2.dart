import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/custom_text.dart';

class Part2 extends StatelessWidget {
  const Part2({super.key, required this.type});
  final int type;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Get.width * 0.15,
          right: Get.width * 0.15,
          top: 30,
          bottom: type == 0 ? 30 : 50),
      color: primaryColor,
      child: Column(
        children: [
          Entry.opacity(
            duration: const Duration(seconds: 2),
            child: Text(
              'About me',
              style: GoogleFonts.changa(
                fontSize: 50,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/hkim.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.04,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomText(
                        text:
                            'Hi, I am Abdalhkim Abloushi, a multidisciplinary artist and creative enthusiast, passionate about Creating mobile app, webistes, design and visual new tech. A decade of experience working in coding, web, mobile, and interaction design. I love creating new app, design and helping people elevate their design skills.',
                        size: type == 0 ? 10 : 14,
                      ),
                      SizedBox(
                        height: type == 0 ? 20 : 35,
                      ),
                      if (type == 3)
                        const CustomText(
                          text: "My Work,Experience, Goals",
                          color: whiteColor,
                          size: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (type == 3)
                        const CustomText(
                          text:
                              'I have more than three years of experience in mobile devlopment, and .As a software engineer, I use new technolgy when Im coding  and I maked more than ten app. I aim to integrate my individualized approach to helping clients build thier app and get thier goals',
                          size: 14,
                        ),
                      if (type == 3)
                        const SizedBox(
                          height: 20,
                        ),
                      if (type == 3)
                        const CustomText(
                          text:
                              'I have worked in many app and in a variety of settings and picked up a number of hobbies along the way. I currently work full-time as an Mobile  & web devloper for a company based in Oman, Muscat. Managing web and Mobile app projects.',
                          size: 14,
                        ),
                      if (type == 3)
                        const SizedBox(
                          height: 20,
                        ),
                      if (type == 3)
                        const CustomText(
                          text:
                              'On my website, I feature a portfolio some of my professional and personal work. I also share source code and resources to help other designers. Coding and programing are a hobby of mine, and I have gained more knowledge.I post my code on my github and linkdein channel about coding languages and design, as well as the different applications and tools I use. I’ve learned that I really enjoy coding ',
                          size: 14,
                        ),
                    ],
                  ),
                ),
              ]),
          if (type != 3)
            CustomText(
              text: "My Work,Experience, Goals",
              color: whiteColor,
              size: type == 0 ? 18 : 28,
              fontWeight: FontWeight.w500,
            ),
          const SizedBox(
            height: 10,
          ),
          if (type != 3)
            CustomText(
              text:
                  'I have more than three years of experience in mobile devlopment, and .As a software engineer, I use new technolgy when Im coding  and I maked more than ten app. I aim to integrate my individualized approach to helping clients build thier app and get thier goals',
              size: type == 0 ? 10 : 14,
            ),
          if (type != 3)
            const SizedBox(
              height: 20,
            ),
          if (type != 3)
            CustomText(
              text:
                  'I have worked in many app and in a variety of settings and picked up a number of hobbies along the way. I currently work full-time as an Mobile  & web devloper for a company based in Oman, Muscat. Managing web and Mobile app projects.',
              size: type == 0 ? 10 : 14,
            ),
          if (type != 3)
            const SizedBox(
              height: 20,
            ),
          if (type != 3)
            CustomText(
              text:
                  'On my website, I feature a portfolio some of my professional and personal work. I also share source code and resources to help other designers. Coding and programing are a hobby of mine, and I have gained more knowledge.I post my code on my github and linkdein channel about coding languages and design, as well as the different applications and tools I use. I’ve learned that I really enjoy coding ',
              size: type == 0 ? 10 : 14,
            ),
        ],
      ),
    );
  }
}
