import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 41,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(
            color: Color(0x6D0A0F22),
            blurRadius: 3,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
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
              style: const TextStyle(
                color: darkBlueColor,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Patient name',
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontSize: 18,
                ),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}