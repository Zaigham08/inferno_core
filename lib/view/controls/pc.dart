import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inferno_core/res/constants.dart';
import 'package:inferno_core/res/helper_extensions.dart';

import '../../res/widgets/general widgets/my_text.dart';

class PC extends StatelessWidget {
  const PC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PC"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconTextBtn(
                  btnText: "Restart",
                  icon: Icons.restart_alt,
                  onTap: () {},
                ),
                IconTextBtn(
                  btnText: "Shutdown",
                  icon: CupertinoIcons.power,
                  onTap: () {},
                ),
                IconTextBtn(
                  btnText: "Freeze",
                  icon: Icons.pause,
                  onTap: () {},
                ),
              ],
            ),
            25.ph,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    IconTextBtn(
                      btnText: "Minimize all windows",
                      icon: FontAwesomeIcons.minimize,
                      iconSize: 33,
                      isVertical: false,
                      onTap: () {},
                    ),
                    20.ph,
                    IconTextBtn(
                      btnText: "Firewall On/Off",
                      icon: Icons.security,
                      isVertical: false,
                      onTap: () {},
                    ),
                    20.ph,
                    IconTextBtn(
                      btnText: "Log Off",
                      icon: Icons.exit_to_app_outlined,
                      isVertical: false,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconTextBtn extends StatelessWidget {
  final String btnText;
  final IconData icon;
  final VoidCallback onTap;
  final double iconSize, textSize;
  final bool isVertical;

  const IconTextBtn({
    super.key,
    required this.btnText,
    required this.icon,
    required this.onTap,
    this.iconSize = 40,
    this.textSize = 17,
    this.isVertical = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: whiteColor, width: 2),
        ),
        child: Center(
          child: isVertical
              ? Column(
                  children: [
                    Icon(icon, size: iconSize),
                    8.ph,
                    MyText(
                      btnText,
                      fontSize: textSize,
                    ),
                  ],
                )
              : Row(
                  children: [
                    Icon(icon, size: iconSize-5),
                    10.pw,
                    MyText(
                      btnText,
                      fontSize: textSize,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
