import 'package:drogovat_mobile/features/on_boarding/data/models/on_board_model.dart';
import 'package:drogovat_mobile/features/on_boarding/presentation/views/widgets/build_board_item.dart';
import 'package:drogovat_mobile/features/registration/sign_in/presentation/views/widgets/sign_in_view_body.dart';
import 'package:drogovat_mobile/features/splash/presentation/views/widgets/small_dots.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/navigate.dart';
import '../../../../registration/sign_in/presentation/views/sign_in_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  var pageController = PageController();

  bool isLast = false;

  void submit(){
    // CacheHelper.saveData(key: 'onBoarding', value: true).then((value){
    //   if(value){
    //     Get.offAll(LoginView());
    //   }
    // });
    navigateOffAllTo(SignInView());
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 40),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return BuildBoardItem(
                  model: boarding[index],
                );
              },
              itemCount: boarding.length,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
            ),
          ),
          Row(
            children: [
              Spacer(),
              TextButton(
                onPressed: () {
                  if (isLast) {
                    submit();
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,);
                  }
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 30),
          SmallDots(pageController: pageController),
        ],
      ),
    );
  }
}