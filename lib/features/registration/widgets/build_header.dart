import 'package:flutter/material.dart';

import '../../../core/utils/assets.dart';

class RegisHeader extends StatelessWidget {
  const RegisHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            RegisAppBar,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 35,
          right: 80,
          child: Column(
            children: [
              Image.asset(
                drugRegisSign,
              ),
              SizedBox(height: 18,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}