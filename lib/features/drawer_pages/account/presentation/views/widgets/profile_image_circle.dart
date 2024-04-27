import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/colors.dart';

class ProfileImageCircle extends StatelessWidget {
  const ProfileImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 54,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[500],
            child: const Text(
              'R',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
            // SvgPicture.asset(
            //   personIcon,
            //   colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            //   width: 50,
            //   height: 50,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        InkWell(
          onTap: () {
            print('good photo');
          },
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: darkBlueColor,
            child: Icon(Icons.camera_alt_outlined),
          ),
        ),
      ],
    );
  }
}
