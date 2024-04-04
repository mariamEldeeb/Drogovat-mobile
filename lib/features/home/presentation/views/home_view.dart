import 'package:drogovat_mobile/core/widgets/custom_bottom_nav_bar.dart';
import 'package:drogovat_mobile/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
