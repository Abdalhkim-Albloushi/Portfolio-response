import 'package:flutter/material.dart';
import 'package:personal_omar/view/about/desktop_about.dart';
import 'package:personal_omar/view/about/mobile_about.dart';
import 'package:personal_omar/view/about/tab_about.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
