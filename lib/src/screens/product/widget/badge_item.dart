import 'package:flutter/material.dart';

class BadgeItem extends StatelessWidget {
  final String badgeText;
  final IconData badgeIcon;
  final Color badgeColor;
  final Color badgeFontColor;

  const BadgeItem({
    Key? key,
    required this.badgeText,
    required this.badgeIcon,
    required this.badgeColor,
    required this.badgeFontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            badgeText,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: badgeFontColor,
            ),
          ),
          Icon(
            badgeIcon,
            size: 18,
          ),
        ],
      ),
    );
  }
}
