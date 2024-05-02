import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/widgets/custom_outline_btn.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/edit_profile_view.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/build_info_widget.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/cover_container.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/edit_profile_btn.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/profile_image_circle.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/my_nav_drawer.dart';
import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    var sKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            key: sKey,
            drawer: const MyNavigationDrawer(),
            body: Column(
              children: [
                SizedBox(
                  height: 260,
                  child: Stack(
                    children: [
                      const CoverContainer(),
                      const Positioned(
                        bottom: 0,
                        left: 20,
                        child: ProfileImageCircle(),
                      ),
                      EditProfileButton(
                        onTap: (){
                          navigateDownUpTo(const EditProfileView());
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BuildInfoWidget(
                  title: 'Name',
                  text: 'Dr. ${AppCubit.get(context).uModel?.name}',
                ),
                BuildInfoWidget(
                  title: 'Email',
                  text: AppCubit.get(context).uModel?.email ?? '',
                ),
                BuildInfoWidget(
                  title: 'Phone',
                  text: AppCubit.get(context).uModel?.phone ?? '',
                ),
                const BuildInfoWidget(
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
                const SizedBox(height: 25),
              ],
            ),
          );
        },
      ),
    );
  }
}
