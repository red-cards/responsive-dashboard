import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    super.key,
    required this.icon,
    required this.text,
    required this.selected,
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected ? SECONDARY_COLOR : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: selected ? BASE_COLOR : BASE_GRAY,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: selected ? BASE_COLOR : BASE_GRAY,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
