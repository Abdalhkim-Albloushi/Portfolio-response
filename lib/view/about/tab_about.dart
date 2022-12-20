import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/view/about/desktop_about.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:personal_omar/widget/my_drower.dart';
import 'package:personal_omar/widget/my_projects.dart';
import 'package:personal_omar/widget/my_skills.dart';
import 'package:personal_omar/widget/part1.dart';
import 'package:personal_omar/widget/part2.dart';
import 'package:personal_omar/widget/part3.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AboutTab extends StatelessWidget {
  AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: textbgColor,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '< 7-kim />',
                style: GoogleFonts.caramel(
                    color: whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        backgroundColor: whiteColor,
        body: ScrollablePositionedList.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) => myItems[index],
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
        ));
  }

  final List<Widget> myItems = [
    Part1(
      type: 1,
    ),
    const MySkills(
      type: 1,
    ),
    const MyProject(type1: 1,),
    const Part2(
      type: 1,
    ),
    const Part3(),
    Container(
      color: textbgColor,
      height: 65,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomText(
            text: "@ 2022 Abdalhkim, All Rights Reserved.",
            color: text1Color,
            size: 12,
            alignment: Alignment.center,
          ),
        ],
      ),
    ),
  ];
}
