import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inferno_core/res/constants.dart';
import 'package:inferno_core/view/controls_panel.dart';
import 'package:inferno_core/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: 'Poppins',
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const ControlPanel(),
    );
  }
}
