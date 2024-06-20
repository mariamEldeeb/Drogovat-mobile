import 'package:drogovat_mobile/features/initial_page/presentation/manager/app_cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrugImageContainer extends StatelessWidget {
  const DrugImageContainer({
    super.key,
    required this.index,
    required this.width,
    required this.height,
  });

  final int index;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xffF2F1F1),
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              const BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        Transform.scale(
          scale: 1.2,
          child: Image.asset(
            AppCubit.get(context).displayDrugList[index].drugImage ?? '',
            width: 81,
            height: 81,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
