import 'package:drogovat_mobile/core/utils/assets.dart';
import 'package:flutter/material.dart';

class VitalModel {
  final String vitalText;
  final String vitalValue;
  final Color vitalTextColor;
  final String icon;
  final String? unit;

  VitalModel({
    required this.vitalText,
    required this.vitalValue,
    required this.vitalTextColor,
    required this.icon,
    this.unit,
  });
}

List<VitalModel> vitals = [
  VitalModel(
    vitalText: 'HR',
    vitalValue: '120 / 80',
    vitalTextColor: const Color(0xff630101),
    icon: heartIcon,
  ),
  VitalModel(
    vitalText: 'BP',
    vitalValue: '88 - 89',
    vitalTextColor: const Color(0xff964003),
    icon: BPIcon,
  ),
  VitalModel(
    vitalText: 'RR',
    vitalValue: '12 - 20',
    vitalTextColor: const Color(0xff7B6902),
    icon: RRIcon,
  ),
  VitalModel(
    vitalText: 'OS',
    vitalValue: '94',
    unit: '%',
    vitalTextColor: const Color(0xff1C7406),
    icon: OSIcon,
  ),
  VitalModel(
    vitalText: 'ETCD',
    vitalValue: '35',
    vitalTextColor: const Color(0xff028585),
    icon: CO2Icon,
  ),
  VitalModel(
    vitalText: 'T',
    vitalValue: '37',
    unit: '℃',
    vitalTextColor: const Color(0xff06085D),
    icon: TIcon,
  ),
  VitalModel(
    vitalText: 'E',
    vitalValue: '75',
    vitalTextColor: const Color(0xff3C0866),
    icon: electrocardiogramIcon,
  ),
];
