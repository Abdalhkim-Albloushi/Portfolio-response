import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:personal_omar/constant.dart';
import 'package:personal_omar/view/about/desktop_about.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
        child: SizedBox(
          width: 250,
          child: Drawer(
            backgroundColor: textbgColor,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    '< 7-kim />',
                    style: GoogleFonts.caramel(
                        color: whiteColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Divider(
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                buldRows(context, 'ABOUT ME', Icons.person, 3),
                const SizedBox(
                  height: 16,
                ),
                buldRows(context, 'SKILLS', Icons.room_preferences, 1),
                const SizedBox(
                  height: 16,
                ),
                buldRows(context, 'PROJECTS', Icons.library_books, 2),
                const SizedBox(
                  height: 16,
                ),
                buldRows(context, 'CONTACT ME', Icons.call, 4),
                const SizedBox(
                  height: 16,
                ),
                const Spacer(),
                buldRows2(context, 'RESUME', Icons.contact_mail, 0),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile buldRows(
      BuildContext context, String text, IconData iconData, int onTap) {
    return ListTile(
      title: Text(
        text,
        style: GoogleFonts.changa(
            color: whiteColor, fontSize: 20, fontWeight: FontWeight.w400),
      ),
      onTap: () {
        Navigator.pop(context);

        itemScrollController.scrollTo(
            index: onTap,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutCubic);
      },
      leading: Icon(
        iconData,
        size: 26.0,
        color: Colors.red[800],
      ),
    );
  }

  ListTile buldRows2(
      BuildContext context, String text, IconData iconData, int onTap) {
    return ListTile(
      title: Text(
        text,
        style: GoogleFonts.changa(
            color: whiteColor, fontSize: 20, fontWeight: FontWeight.w400),
      ),
      onTap: () async {
        Navigator.pop(context);

        await launchUrl(Uri.parse(
            "https://drive.google.com/drive/folders/1U3h0G-WYzgqVMMNMRJH4DOe6O7XbfMdP"));
      },
      leading: Icon(
        iconData,
        size: 26.0,
        color: Colors.red[800],
      ),
    );
  }
}
