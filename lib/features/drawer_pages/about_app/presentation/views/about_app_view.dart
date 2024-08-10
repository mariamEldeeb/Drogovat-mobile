import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'About App',
            style: TextStyle(
              fontSize: 30,
              color: darkBlueColor,
            ),
          ),
          leading: backIcon(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 23),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 91,
                decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(
                  logoName,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    'It is an application that\nperforms the anesthesia process\nin an automatic manner by\n'
                    'entering the patient\'s data. The AI determines the appropriate\ntype of anesthetic and the\n'
                    'first dose. Then, as soon as you press start the process and the doses begin to be pumped in a clculated\n'
                    'periodic manner throughout the operation period',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, height: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
