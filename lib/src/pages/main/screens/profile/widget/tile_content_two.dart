import 'package:flutter/material.dart';

import '../../../../../constants/theme.dart';

class TileProfileTwo extends StatelessWidget {
  const TileProfileTwo({
    Key? key,
    required this.icon,
    required this.color,
    required this.colorSec,
    required this.label,
    this.onPress,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final Color colorSec;
  final String label;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: colorSec,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                ),
                MyTheme.spaceW(10),
                Text(
                  label,
                  style: MyTheme.heading4.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: MyTheme.sec,
            )
          ],
        ),
      ),
    );
  }
}
