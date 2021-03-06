import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_hackathon/app/pages/auth/auth_page.dart';
import 'package:projeto_hackathon/app/utils/color_palette.dart';

void main() {
  runApp(const SafraPartnersApp());
}

class SafraPartnersApp extends StatelessWidget {
  const SafraPartnersApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Safra Partners',
        color: ColorPalette.primary,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: AuthPage(),
        // home: IntroPage(),
        // home: HomePage(title: 'Safra Partners Title'),
      ),
    );
  }
}
