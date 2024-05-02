import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/colors.dart';

class ProfileImageCircle extends StatelessWidget {
  const ProfileImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 115,
              height: 115,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[500],
                border: Border.all(color: backgroundColor, width: 6),
              ),
              child: cubit.uModel?.image == null
                  ? Center(
                      child: Text(
                        cubit.uModel!.name![0].toUpperCase(),
                        style: const TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Image.network(
                      cubit.uModel?.image ?? '',
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
      },
    );
  }
}
