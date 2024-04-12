import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/initial_page/presentation/views/widgets/custom_search_container.dart';
import '../utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.sKey});

  final GlobalKey<ScaffoldState> sKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              menuIcon,
            ),
            onPressed: () {
              sKey.currentState?.openDrawer();
            },
          ),
          const SizedBox(width: 20),
          const SearchContainer(),
        ],
      ),
    );
  }
}
