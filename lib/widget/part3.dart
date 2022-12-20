import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:personal_omar/widget/my_input.dart';

class Part3 extends StatelessWidget {
  const Part3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Get.width * 0.15, right: Get.width * 0.15, top: 50, bottom: 50),
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Entry.opacity(
            duration: const Duration(seconds: 2),
            child: Text(
              'Contact me',
              style: GoogleFonts.changa(
                fontSize: 50,
                color: textbgColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
              text:
                  'If you have any questions you can use this form to get in touch. Please share as much information about your question or what you’re trying to achieve and I will do my best to answer.',
              size: 14,
              alignment: Alignment.topRight),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                  child: MyInput(
                hintText: 'Name*',
              )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: MyInput(
                hintText: "Email*",
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MyInput(
            maxLines: 8,
            hintText: 'Writing',
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 80,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: textbgColor,
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: const CustomText(
              text: 'Send',
              size: 16,
              color: whiteColor,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}
