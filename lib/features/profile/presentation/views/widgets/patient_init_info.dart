import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:drogovat_mobile/core/utils/colors.dart';
import 'package:drogovat_mobile/core/utils/constants.dart';
import 'package:drogovat_mobile/features/profile/data/models/patient_model.dart';
import 'package:drogovat_mobile/features/profile/presentation/manager/profile_cubit.dart';
import 'package:drogovat_mobile/features/profile/presentation/manager/profile_state.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/build_2raf.dart';
import 'package:drogovat_mobile/features/profile/presentation/views/widgets/build_list_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientInitInfo extends StatelessWidget {
  const PatientInitInfo({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildProfileIconContainer(),
              const SizedBox(height: 13),
              Text(
                patients[index].name,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 7),
              Text(
                '00012',
                style: TextStyle(
                  fontSize: 20,
                  color: darkBlueColor.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 35),
              const Build2Araf(),
              const Spacer(),
              const BuildListPages(),
            ],
          ),
        );
      },
    );
  }

  Container buildProfileIconContainer() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: containerShadow()),
      child: Transform.scale(
        scale: 35 / 100,
        child: SvgPicture.asset(
          width: 15,
          height: 15,
          fit: BoxFit.contain,
          personIcon,
          // color: Colors.black,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
      ),
    );
  }
}
