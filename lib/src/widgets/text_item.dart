import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  final String itemTitle;
  final bool isChecked;
  const TextItem({
    Key? key,
    required this.itemTitle,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            itemTitle,
            style: TextStyle(
              fontWeight: isChecked ? FontWeight.w600 : FontWeight.w400,
              fontSize: isChecked ? 18 : 16,
              color: const Color.fromARGB(255, 3, 44, 107),
            ),
          ),
        ),
        if (isChecked)
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 3, 44, 107),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ],
    );
  }
}
