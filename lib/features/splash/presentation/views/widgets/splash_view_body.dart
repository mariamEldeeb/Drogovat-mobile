import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:drogovat_mobile/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToNextScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            logoName,
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 9,
          ),
          SizedBox(height: 10),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(animationController);

    animationController.forward();
  }

  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        OnBoardingView(),
        transition: Transition.fadeIn,
        duration: Duration(milliseconds: 500),
      );
    });
  }
}