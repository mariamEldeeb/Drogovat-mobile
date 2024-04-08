import 'package:drogovat_mobile/core/utils/assets.dart';

class BottomNavItemModel {
  String icon;
  String title;
  // int index;

  BottomNavItemModel({
    required this.icon,
    required this.title,
    // required this.index,
  });
}

List<BottomNavItemModel> bottomNavItems = [
  BottomNavItemModel(
      icon: personIcon,
      title: 'Patients',
  ),
  BottomNavItemModel(
      icon: drugIcon,
      title: 'Drugs',
  ),
];