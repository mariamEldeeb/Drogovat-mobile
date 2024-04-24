import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              splashBG,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            body,
          ],
        ),
      ),
    );
  }
}