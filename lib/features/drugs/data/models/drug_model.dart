import 'package:drogovat_mobile/core/utils/assets.dart';

class DrugModel {
  final String name;
  final String image;

  DrugModel({
    required this.name,
    required this.image,
  });
}

List<DrugModel> drugs = [
  DrugModel(
    name: 'Cetacaine',
    image: drug1Image,
  ),
  DrugModel(
    name: 'Isoflurane',
    image: drug2Image,
  ),
  DrugModel(
    name: 'Propofol',
    image: drug3Image,
  ),
  DrugModel(
    name: 'Cetacaine',
    image: drug1Image,
  ),
  DrugModel(
    name: 'Propofol',
    image: drug3Image,
  ),

];
