import 'package:flutter/material.dart';
import 'package:inferno_core/res/helper_extensions.dart';
import 'package:inferno_core/res/widgets/general%20widgets/my_text.dart';

import '../res/constants.dart';
import '../res/widgets/appBar components/my_appbar.dart';
import '../res/widgets/general widgets/add_target_widget.dart';
import '../res/widgets/general widgets/target_widget.dart';

class AllTargetsPage extends StatelessWidget {
  const AllTargetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(title: "Targets"),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding - 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addTargetWidget(),
                12.ph,
                const MyText(
                  'Targets (offline)',
                  fontSize: 16,
                  color: txtColor,
                ),
                TargetWidget(
                  name: "Munir",
                  onTap: () {},
                ),
                TargetWidget(
                  name: "Usman",
                  onTap: () {},
                ),
                TargetWidget(
                  name: "Zain",
                  onTap: () {},
                ),
                20.ph,
                const MyText(
                  'Targets (online)',
                  fontSize: 16,
                  color: txtColor,
                ),
                TargetWidget(
                  name: "Munir",
                  onTap: () {},
                ),
                TargetWidget(
                  name: "Usman",
                  onTap: () {},
                ),
                TargetWidget(
                  name: "Zain",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
