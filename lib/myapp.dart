
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_omar/constant.dart';
import 'package:personal_omar/routes.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      routes: routes,
     initialRoute: AppRoute.about,
     
    );
  }
}
