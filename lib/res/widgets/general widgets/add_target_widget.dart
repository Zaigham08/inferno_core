import 'package:flutter/material.dart';
import 'package:inferno_core/res/helper_extensions.dart';

import '../../constants.dart';

Center addTargetWidget() {
  return Center(
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 55,
              width: 55,
              color: whiteColor,
              child: const Icon(
                Icons.add,
                color: bgColor,
                size: 30,
              ),
            ),
          ),
        ),
        10.ph,
        const Text(
          "Add Target",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Divider(),
      ],
    ),
  );
}
