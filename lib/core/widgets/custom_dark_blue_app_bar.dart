import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/assets.dart';

class CustomDarkBlueAppBar extends StatelessWidget {
  const CustomDarkBlueAppBar({super.key, required this.sKey, required this.name});

  final GlobalKey<ScaffoldState> sKey;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 14,
      color: darkBlueColor,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              menuIcon,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            onPressed: () {
              sKey.currentState?.openDrawer();
            },
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 27,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
