import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../initial_page/presentation/manager/app_cubit/app_cubit.dart';

class VitalSignContainer extends StatelessWidget {
  const VitalSignContainer({super.key, this.index = 0});
  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.95,
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        // boxShadow: containerShadow(),
      ),
      child: Column(
        children: [
          buildVitalItem(
            vitalText: 'HR',
            vitalTextColor: const Color(0xff630101),
            vitalValue: '${cubit.patients[index].heartRate}',
            icon: heartIcon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'BP',
            vitalTextColor: const Color(0xff964003),
            vitalValue: '${cubit.patients[index].bloodPressure}',
            icon: BPIcon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'RR',
            vitalTextColor: const Color(0xff7B6902),
            vitalValue: '${cubit.patients[index].rasRate}',
            icon: RRIcon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'SpO2',
            vitalTextColor: const Color(0xff1C7406),
            vitalValue: '${cubit.patients[index].oxSaturation} %',
            icon: OSIcon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'EtCO2',
            vitalTextColor: const Color(0xff028585),
            vitalValue: '${cubit.patients[index].endTidalCarbon}',
            icon: CO2Icon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'Temp',
            vitalTextColor: const Color(0xff06085D),
            vitalValue: '${cubit.patients[index].temp} ℃',
            icon: TIcon,
          ),
          const SizedBox(height: 10),
          buildVitalItem(
            vitalText: 'ECG',
            vitalTextColor: const Color(0xff3C0866),
            vitalValue: '${cubit.patients[index].electrocardiogram}',
            icon: electrocardiogramIcon,
          ),
        ],
      ),
    );
  }

  Container buildVitalItem({vitalText, vitalValue, vitalTextColor, icon}) {
    return Container(
      height: 45,
      width: 200,
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: vitalText,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vitalValue,
            style: Styles.textStyle20.copyWith(color: vitalTextColor),
          ),
          Image.asset(
            icon,
            fit: BoxFit.contain,
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
