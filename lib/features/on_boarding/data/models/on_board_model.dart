import 'package:drogovat_mobile/core/utils/assets.dart';

class BoardingModel {
  final String image;
  final String description;

  BoardingModel({
    required this.image,
    required this.description,
  });
}

List<BoardingModel> boarding = [
  BoardingModel(
    image: pageViewImage1,
    description:
        'Monitor anesthesia operations\nremotely and check the patient\'s\nvital signs',
  ),
  BoardingModel(
    image: pageViewImage2,
    description:
        'Save all patients who underwent\nanesthesia and their operation data',
  ),
  BoardingModel(
    image: pageViewImage3,
    description:
        'Check patient data, drugs,\nand anesthesia operations anytime\nand anywhere',
  ),
];
