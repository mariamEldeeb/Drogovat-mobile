import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/my_nav_drawer.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    var sKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: sKey,
        drawer: const MyNavigationDrawer(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 20),
          child: Expanded(
            child: Padding(
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
                ],
              ),
            ),
          ),
        ),
        body: Column(),
      ),
    );
  }
}
