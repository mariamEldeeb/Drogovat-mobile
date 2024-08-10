import 'package:drogovat_mobile/core/functions/navigate.dart';
import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/core/widgets/custom_outline_btn.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/build_info_widget.dart';
import 'package:drogovat_mobile/features/drawer_pages/account/presentation/views/widgets/profile_image_circle.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'My Profile',
                style: TextStyle(fontSize: 25, color: darkBlueColor),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  IconlyLight.arrow_left,
                  size: 30,
                  color: darkBlueColor,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 182,
                        decoration: BoxDecoration(
                          color: darkBlueColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(fadeLogo),
                      ),
                      const ProfileImageCircle(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BuildInfoWidget(
                    title: 'Name',
                    text: 'Dr. ${AppCubit.get(context).uModel?.name}',
                  ),
                  BuildInfoWidget(
                    title: 'Email',
                    text: '${AppCubit.get(context).uModel?.email}',
                  ),
                  BuildInfoWidget(
                    title: 'Phone',
                    text: '${AppCubit.get(context).uModel?.phone}',
                  ),
                  BuildInfoWidget(
                    title: 'Patients',
                    text: '${AppCubit.get(context).displayPatientList.length}',
                  ),
                  const Spacer(),
                  CustomOutlineButton(
                    width: 150,
                    text: 'Sign Out',
                    onTap: () async {
                      uId = '';
                      navigateTo(const SignInView());
                      // await FirebaseAuth.instance.signOut();
                    },
                    isIcon: true,
                    icon: Icons.logout_rounded,
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
