import 'package:flutter/material.dart';
import 'package:inferno_core/res/helper_extensions.dart';

AppBar myAppBar({required String title}) {
  return AppBar(
    title: Text(" $title"),
    automaticallyImplyLeading: false,
    actions: [
      InkWell(
        onTap: () {
          // Get.to(()=> SettingsPage());
        },
        child: const Icon(Icons.settings,size: 27),
      ),
      15.pw,
    ],
  );
}