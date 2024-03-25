import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inferno_core/res/constants.dart';
import 'package:inferno_core/view/files_page.dart';
import '../view models/controllers/general_controller.dart';
import 'home.dart';
import 'targets_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final GeneralController generalController = Get.put(GeneralController());

  final List<Widget> _pages = [
    const HomePage(),
    const AllTargetsPage(),
    ExtractedFilesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Obx(
          () => _pages[generalController.selectedIndex.value],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            elevation: 15,
            selectedItemColor: btnColor,
            unselectedItemColor: whiteColor,
            currentIndex: generalController.selectedIndex.value,
            onTap: (index) {
              generalController.selectedIndex.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: 'Targets',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_down_doc_fill),
                label: 'Files',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
