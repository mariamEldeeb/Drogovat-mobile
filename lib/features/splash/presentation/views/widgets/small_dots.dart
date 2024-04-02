import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../on_boarding/data/models/on_board_model.dart';

class SmallDots extends StatelessWidget {
  const SmallDots({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: boarding.length,
      effect: ScrollingDotsEffect(
        dotColor: Colors.white,
        activeDotColor: Colors.white,
        radius : 8,
        activeDotScale : 0.5,
        activeStrokeWidth : 2.5,
        spacing: 15,
      ),
    );
  }
}
