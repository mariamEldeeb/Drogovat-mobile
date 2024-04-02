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
        Text(
          'DROGOVAT',
          style: const TextStyle(
            fontSize: 37,
            color: Colors.white,
          ),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Imprima',
                ),
              ),
              TextSpan(
                text: model.description.replaceAll(words[0], ''),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Imprima',
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
