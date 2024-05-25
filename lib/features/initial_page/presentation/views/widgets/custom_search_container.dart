import 'package:drogovat_mobile/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onFieldSubmitted,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 41,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: Styles.textStyle20.copyWith(color: darkBlueColor),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Styles.textStyle18
                    .copyWith(color: darkBlueColor.withOpacity(0.5)),
                border: InputBorder.none,
              ),
              maxLines: 1,
              onChanged: onChanged,
              onFieldSubmitted: onFieldSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}
