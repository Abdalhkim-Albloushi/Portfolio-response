import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/widget/appbar.dart';
import 'package:personal_omar/widget/custom_text.dart';
import 'package:personal_omar/widget/my_projects.dart';
import 'package:personal_omar/widget/my_skills.dart';
import 'package:personal_omar/widget/part1.dart';
import 'package:personal_omar/widget/part2.dart';
import 'package:personal_omar/widget/part3.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();

class AboutDesktop extends StatelessWidget {
  AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Get.width, 65),
          child: const MyAppBar(),
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
    Part1(type: 3,),
    const MySkills(type: 3,),
    const MyProject(type1: 3,),
    const Part2(type:3),
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
