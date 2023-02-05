import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class BtnBack extends StatelessWidget {
  const BtnBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        // alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: MyTheme.secondary.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: MyTheme.primary.blue,
          ),
        ),
      ),
    );
  }
}
