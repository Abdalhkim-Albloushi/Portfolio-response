import 'package:flutter/material.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/view/about/about_view.dart';

Map<String, Widget Function(BuildContext context)> routes = {
//  AppRoute.mainScreen: (context)=> const MainView(),
  AppRoute.about: (context) => const AboutView()
};
