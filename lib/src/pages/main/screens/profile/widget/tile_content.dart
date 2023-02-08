import 'package:flutter/material.dart';

import '../../../../../constants/theme.dart';

class TileProfile extends StatelessWidget {
  const TileProfile({
    Key? key,
    required this.title,
    required this.value,
    this.onPress,
  }) : super(key: key);

  final String title;
  final String value;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: MyTheme.heading4.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  value,
                  style: MyTheme.heading5.copyWith(
                    color: MyTheme.sec,
                  ),
                  textAlign: TextAlign.end,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: MyTheme.sec,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
