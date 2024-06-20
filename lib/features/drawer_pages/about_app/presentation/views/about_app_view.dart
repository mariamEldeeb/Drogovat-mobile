import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';

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
            'Just For Fun',
            style: TextStyle(
              fontSize: 30,
              color: darkBlueColor,
            ),
          ),
          leading: backIcon(),
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                forFun,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Our app is amazing, simply because WE MADE THIS 😏..., Let\'s talk about it a little bit, '
                'this app helps you track your patient status becaues you are tired 😴. All you need to do just open the app'
                'look how easy it is🤭. I know you are wondering... \nHOW WILL THIS HAPPEN?? 🤔🤨\n Ok I\'ll tell you😄 \n شرح الفكره للمره المليون😤'
                '\n I hope you enjoy using this app and find it useful or eles..🔪🤐',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
