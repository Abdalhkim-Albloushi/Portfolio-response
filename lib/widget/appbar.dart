import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/view/about/desktop_about.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

List<bool> _isHaver = [
  false,
  false,
  false,
  false,
  false,
];

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: textbgColor,
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Row(
        children: [
          const Expanded(flex: 1, child: SizedBox()),
          Text(
            '< 7-kim />',
            style: GoogleFonts.caramel(
                color: whiteColor, fontSize: 35, fontWeight: FontWeight.w600),
          ),
          const Spacer(
            flex: 4,
          ),
          buildtBar(1, "About me", 3),
          const SizedBox(
            width: 50,
          ),
          buildtBar(2, "Skills", 1),
          const SizedBox(
            width: 50,
          ),
          buildtBar(3, "Projects", 2),
          const SizedBox(
            width: 50,
          ),
          buildtBar(4, "Contact me", 4),
          const SizedBox(
            width: 40,
          ),
          const Icon(
            CupertinoIcons.search,
            color: text1Color,
            size: 20,
          ),
          const SizedBox(
            width: 40,
          ),
          MaterialButton(
            color: bule2Color,
            onPressed: () async {
              await launchUrl(Uri.parse(
                  "https://drive.google.com/drive/folders/1U3h0G-WYzgqVMMNMRJH4DOe6O7XbfMdP"));
            },
            child: const CustomText(
              alignment: Alignment.center,
              text: "Resume",
              color: whiteColor,
            ),
          ),
          const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }

  InkWell buildtBar(int x, String text, int onTap) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHaver[x] = true : _isHaver[x] = false;
        });
      },
      onTap: () {
        setState(() {
          itemScrollController.scrollTo(
              index: onTap,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOutCubic);
          _isHaver[x] = true;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: text,
            color: _isHaver[x] ? whiteColor : text1Color,
            size: 13,
            fontWeight: _isHaver[x] ? FontWeight.w400 : null,
          ),
          const SizedBox(
            height: 7,
          ),
          Visibility(
            maintainState: true,
            maintainSize: true,
            maintainAnimation: true,
            child: Container(
              width: 30,
              height: 2,
              color: _isHaver[x] ? whiteTextColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
