import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class ListViewOfPagesItem extends StatelessWidget {
  const ListViewOfPagesItem({super.key, required this.index, required this.isSelected});

  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected ? buildOnContainer() : buildOffContainer();
  }

  Widget buildOffContainer(){
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        // color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
        border: const Border(
          top: BorderSide(color: Colors.black26, width: 5),
          right: BorderSide(color: Colors.black26, width: 2),
          left: BorderSide(color: Colors.black26, width: 2),
          bottom: BorderSide(color: Colors.black26, width: 2),
        ),
      ),
      child: Center(
        child: Text(
          '${index + 1}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Widget buildOnContainer(){
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          '${index + 1}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
