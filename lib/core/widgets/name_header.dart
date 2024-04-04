import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';

class NameHeader extends StatelessWidget {
  const NameHeader({
    super.key,
    required this.name, this.onTap,
  });

  final String name;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 14,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        color: darkBlueColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: onTap,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
          Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
