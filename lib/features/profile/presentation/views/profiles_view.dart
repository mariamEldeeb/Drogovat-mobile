import 'package:drogovat_mobile/core/widgets/custom_bottom_nav_bar.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/profiles_view_body.dart';
import 'package:flutter/material.dart';

class ProfilesView extends StatelessWidget {
  const ProfilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProfilesViewBody(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
