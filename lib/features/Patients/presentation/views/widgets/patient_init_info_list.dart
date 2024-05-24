import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PatientInitInfoList extends StatelessWidget {
  const PatientInitInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            'Open heart surgery',
            style: Styles.textStyle18DarkBlue,
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: const Text(
            'from  07 : 20 am',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: const Text(
            'to  10 : 43 am',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            'Room 11',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            'Done',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        MyDivider(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          padding: const EdgeInsets.only(left: 25),
          child: const Text(
            'Dr. RASHA WAHDAN',
            style: Styles.textStyle18DarkBlue,
          ),
        ),
      ],
    );
  }

  Divider MyDivider() {
    return Divider(
      color: Colors.black.withOpacity(0.2),
      thickness: 2,
    );
  }
}
