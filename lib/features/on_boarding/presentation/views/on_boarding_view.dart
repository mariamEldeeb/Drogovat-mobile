import 'package:drogovat_mobile/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:drogovat_mobile/features/splash/presentation/views/widgets/background.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Background(
        body: OnBoardingViewBody(),
      ),
    );
  }
}