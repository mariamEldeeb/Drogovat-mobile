import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:drogovat_mobile/features/on_boarding/data/models/on_board_model.dart';
import 'package:flutter/material.dart';

class BuildBoardItem extends StatelessWidget {
  const BuildBoardItem({super.key, required this.model});

  final BoardingModel model;

  @override
  Widget build(BuildContext context) {
    List<String> words = model.description.split(' ');

    return Column(
      children: [
        const Text(
          'DROGOVAT',
          style: Styles.textStyle37,
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 10),
        Image.asset(
          model.image,
          width: MediaQuery.of(context).size.width / 0.5,
          height: MediaQuery.of(context).size.height / 3,
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 20),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: words[0],
                style: Styles.textStyle20.copyWith(fontSize: 25),
              ),
              TextSpan(
                text: model.description.replaceAll(words[0], ''),
                style: Styles.textStyle20,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}