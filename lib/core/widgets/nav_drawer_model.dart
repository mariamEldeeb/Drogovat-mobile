import 'package:drogovat_mobile/core/utils/assets.dart';

class NavDrawerModel {
  final String label;
  final String icon;

  NavDrawerModel({
    required this.label,
    required this.icon,
  });
}

List<NavDrawerModel> drawerModel = [
  NavDrawerModel(
    label: 'Language',
    icon: languageIconPng,
  ),
  NavDrawerModel(
    label: 'My Patients',
    icon: folderIconPng,
  ),
  NavDrawerModel(
    label: 'This account',
    icon: personIconPng,
  ),
  NavDrawerModel(
    label: 'Contact Us',
    icon: contactsUsIconPng,
  ),
];