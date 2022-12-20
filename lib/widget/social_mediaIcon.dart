import 'package:flutter/material.dart';
import 'package:personal_omar/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconBtn extends StatelessWidget {
  
      const SocialMediaIconBtn(
      {Key? key, this.icon, this.socialLink, this.height, this.horizontalPadding}) : super(key: key);

      final String? icon;
  final String? socialLink;
  final double? height;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding??1),
      child: IconButton(
        icon: Image.asset(
          icon??"",
          color:  primaryColor,
        ),
        iconSize: height,
        onPressed: () async{
             
                await launchUrl(Uri.parse(socialLink!));
              
        },
        splashRadius: 40,
        hoverColor: Colors.blue.withOpacity(0.1),
      ),
    );
  }
}
