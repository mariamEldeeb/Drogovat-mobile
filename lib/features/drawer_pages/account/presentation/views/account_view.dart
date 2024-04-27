import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/core/widgets/custom_outline_btn.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/build_info_widget.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/cover_container.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/my_divider.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/profile_image_circle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/my_nav_drawer.dart';
import '../../../../Patients/presentation/views/widgets/output_container.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    var sKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: sKey,
        drawer: const MyNavigationDrawer(),
        body: Column(
          children: [
            const SizedBox(
              height: 250,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  // cover
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: CoverContainer(),
                  ),
                  ProfileImageCircle(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Dr. Rasha Wahdan',
              style: Styles.textStyle25,
            ),
            const MyDivider(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20)),
            const SizedBox(height: 30),
            const BuildInfoWidget(
              icon: Icons.email,
              title: 'Email',
              text: 'mariameldeeb2001@gmail.com',
            ),
            const BuildInfoWidget(
              icon: Icons.local_phone_rounded,
              title: 'Phone',
              text: '01026119930',
            ),
            const BuildInfoWidget(
              icon: Icons.people_alt_rounded,
              title: 'Patients',
              text: '4',
            ),
            const Spacer(),
            CustomOutlineButton(
              text: 'Sign Out',
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              },
              isIcon: true,
              icon: Icons.logout_rounded,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
