import 'package:flutter/material.dart';
import 'package:inferno_core/res/helper_extensions.dart';

import '../../constants.dart';

class TargetWidget extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const TargetWidget({
    super.key,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.4),
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 50,
                width: 50,
                color: whiteColor,
                child: const Icon(
                  Icons.person,
                  color: bgColor,
                  size: 34,
                ),
              ),
            ),
            14.pw,
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
