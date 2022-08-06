import 'package:flutter/material.dart';
import 'package:flutter_fourth_project/src/config/strings.dart';

class ReadMoreTextItem extends StatefulWidget {
  const ReadMoreTextItem({Key? key}) : super(key: key);

  @override
  State<ReadMoreTextItem> createState() => _ReadMoreTextItemState();
}

class _ReadMoreTextItemState extends State<ReadMoreTextItem> {
  bool isCheckedForMore = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: isCheckedForMore ? 90 : 50,
      padding: const EdgeInsets.all(5),
      curve: Curves.ease,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isCheckedForMore = !isCheckedForMore;
          });
        },
        child: Text(
          proArtText,
          maxLines: isCheckedForMore ? 500 : 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
