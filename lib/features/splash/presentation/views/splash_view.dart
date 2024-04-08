import 'package:drogovat_mobile/features/splash/presentation/views/widgets/background.dart';
import 'package:drogovat_mobile/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      body: SplashViewBody(),
    );
  }
}