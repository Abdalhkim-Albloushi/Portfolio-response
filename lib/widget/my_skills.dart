import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/custom_text.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key, required this.type}) : super(key: key);

  final int type;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      margin: const EdgeInsets.symmetric(vertical: 50),
      color: primaryColor,
      child: Entry.all(
        visible: true,
        duration: const Duration(seconds: 2),
        child: Column(
          children: [
            Text(
              'My Skills',
              style: GoogleFonts.changa(
                fontSize: 50,
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: type == 0 ? 35 : 70,
            ),
            if (type != 0)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCard('php', 'PHP'),
                  buildCard('javascript', 'Javascript'),
                  buildCard('laravel', 'Laravel'),
                  buildCard('nodejs-alt', 'Node Js'),
                  buildCard2('', 'Dart'),
                  buildCard2('', 'Flutter'),
                ],
              ),
            if (type == 0)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildCard('php', 'PHP'),
                    buildCard('javascript', 'Javascript'),
                    buildCard('laravel', 'Laravel'),
                    buildCard('nodejs-alt', 'Node Js'),
                    buildCard2('', 'Dart'),
                    buildCard2('', 'Flutter'),
                  ],
                ),
              ),
            if (type != 0)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCard('figma', 'figma'),
                  buildCard('adobe', 'Adobe 3D'),
                  buildCard('github-original', 'Github'),
                  buildCard('google', 'Firebase'),
                ],
              ),
            SizedBox(
              height: type == 0 ? 30 : 50,
            ),
          ],
        ),
      ),
    );
  }

  Container buildCard(String img, String title) {
    return Container(
      height: type == 3 ? 180 : 130,
      margin: const EdgeInsets.all(13),
      padding:
          EdgeInsets.symmetric(horizontal: type == 3 ? 30 : 16, vertical: 20),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 10)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/$img.svg',
              height: type == 3 ? 70 : 40, semanticsLabel: 'Acme Logo'),
          const SizedBox(
            height: 20,
          ),
          CustomText(
            text: title,
            color: primaryColor,
            size: type == 3 ? 20 : 14,
            fontWeight: FontWeight.w500,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  Container buildCard2(String img, String title) {
    return Container(
      height: type == 3 ? 180 : 130,
      margin: const EdgeInsets.all(13),
      padding:
          EdgeInsets.symmetric(horizontal: type == 3 ? 30 : 20, vertical: 20),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 10)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: type == 3 ? 50 : 30,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomText(
            text: title,
            color: primaryColor,
            size: type == 3 ? 20 : 14,
            fontWeight: FontWeight.w500,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
