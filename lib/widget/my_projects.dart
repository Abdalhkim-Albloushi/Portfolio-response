import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatelessWidget {
  const MyProject({Key? key, required this.type1}) : super(key: key);
  final int type1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: type1 == 0 ? 10 : 30),
      margin: EdgeInsets.symmetric(vertical: type1 == 0 ? 10 : 20),
      child: Column(
        children: [
          Entry.opacity(
            duration: const Duration(seconds: 2),
            child: Text(
              'My Projects',
              style: GoogleFonts.changa(
                fontSize: 50,
                color: primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: type1 == 0 ? 30 : 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCard(
                    'p4.jpg',
                    'Dalilee Shipper',
                    '- build by flutter and laravel framework with mySql',
                    'app',
                    'https://play.google.com/store/apps/details?id=thiqatech.dalilee.shipper_app&hl=en_US&gl=US'),
                buildCard(
                    'p1.png',
                    'Coffee Admin',
                    '- build  this app by flutter and firebase back-end',
                    'app',
                    'https://play.google.com/store/apps/details?id=com.hkim.cafeadminapp'),
                buildCard(
                    'p5.png',
                    'Customer Coffee',
                    '- build this website by flutter and firebase',
                    'web',
                    'https://cafe1-73a34.web.app/sp'),
                buildCard(
                    'p2.png',
                    'Percentage calculation',
                    'build by Flutter to Percentage calculate',
                    'app',
                    'https://play.google.com/store/apps/details?id=com.abdalhkimali.percentage'),
                buildCard(
                    'p7.png',
                    'Other Projects',
                    '- Node js and Laravel projects',
                    'Apis',
                    'https://github.com/Abdalhkim-Albloushi'),
              ],
            ),
          ),
          SizedBox(
            height: type1 == 0 ? 40 : 70,
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      String img, String title, String title2, String type, String url) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 7, spreadRadius: 1)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/$img',
                height: type1 == 0 ? 180 : 300,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: type1 == 0 ? 16 : 22,
          ),
          CustomText(
            text: type,
            color: Colors.red[800] ?? Colors.red,
            size: 11,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(
            text: title,
            color: primaryColor,
            size: type1 == 0 ? 16 : 23,
            fontWeight: FontWeight.w600,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomText(
            text: title2,
            color: textbgColor,
            size: type1 == 0 ? 12 : 16,
            fontWeight: FontWeight.w200,
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(
            height: type1 == 0 ? 20 : 30,
          ),
          Material(
            borderRadius: BorderRadius.circular(90),
            color: Colors.blue[800],
            child: MaterialButton(
              onPressed: () async {
                await launchUrl(Uri.parse(url));
              },
              child: const CustomText(
                color: whiteColor,
                text: 'View',
              ),
            ),
          )
        ],
      ),
    );
  }
}
