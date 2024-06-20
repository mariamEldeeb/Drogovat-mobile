import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key, this.switchLabel, required this.switchValue, this.onChange});

  final String? switchLabel;
  final bool switchValue;
  final void Function(bool)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Switch(
            value: switchValue,
            onChanged: onChange,
            activeColor: const Color(0xff154908),
            activeTrackColor: const Color(0xff6ED93C),
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color(0xff787880),
          ),
          switchLabel != null
              ? Text(
                  '${switchLabel}',
                  style: Styles.textStyle16,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
